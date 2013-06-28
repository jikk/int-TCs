; ModuleID = 'src/http/ngx_http_parse.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ngx_http_request_s = type { i32, %struct.ngx_connection_s*, i8**, i8**, i8**, i8**, void (%struct.ngx_http_request_s*)*, void (%struct.ngx_http_request_s*)*, %struct.ngx_http_cache_s*, %struct.ngx_http_upstream_s*, %struct.ngx_array_s*, %struct.ngx_pool_s*, %struct.ngx_buf_s*, %struct.ngx_http_headers_in_t, %struct.ngx_http_headers_out_t, %struct.ngx_http_request_body_t*, i32, i32, i32, i32, i32, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_chain_s*, %struct.ngx_http_request_s*, %struct.ngx_http_request_s*, %struct.ngx_http_postponed_request_s*, %struct.ngx_http_post_subrequest_t*, %struct.ngx_http_posted_request_s*, %struct.ngx_http_virtual_names_t*, i32, i32 (%struct.ngx_http_request_s*)*, i32, %struct.ngx_variable_value_t*, i32, i32*, i8*, i32, i32, i64, i32, %struct.ngx_http_connection_t*, i8* (%struct.ngx_http_request_s*, %struct.ngx_http_request_s*, i8*, i32)*, %struct.ngx_http_cleanup_s*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [32 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [2 x i8], [2 x i8] }
%struct.ngx_connection_s = type { i8*, %struct.ngx_event_s*, %struct.ngx_event_s*, i32, i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, %struct.ngx_chain_s*)*, %struct.ngx_chain_s* (%struct.ngx_connection_s*, %struct.ngx_chain_s*, i64)*, %struct.ngx_listening_s*, i64, %struct.ngx_log_s*, %struct.ngx_pool_s*, %struct.sockaddr*, i32, %struct.ngx_str_t, %struct.sockaddr*, %struct.ngx_buf_s*, %struct.ngx_queue_s, i32, i32, i8, i8, i8, i8 }
%struct.ngx_event_s = type { i8*, i8, i8, i8, void (%struct.ngx_event_s*)*, i32, %struct.ngx_log_s*, %struct.ngx_rbtree_node_s, i8, %struct.ngx_event_s*, %struct.ngx_event_s** }
%struct.ngx_log_s = type { i32, %struct.ngx_open_file_s*, i32, i8* (%struct.ngx_log_s*, i8*, i32)*, i8*, i8* }
%struct.ngx_open_file_s = type { i32, %struct.ngx_str_t, i8*, i8*, i8* }
%struct.ngx_str_t = type { i32, i8* }
%struct.ngx_rbtree_node_s = type { i32, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, i8, i8 }
%struct.ngx_chain_s = type { %struct.ngx_buf_s*, %struct.ngx_chain_s* }
%struct.ngx_buf_s = type { i8*, i8*, i64, i64, i8*, i8*, i8*, %struct.ngx_file_s*, %struct.ngx_buf_s*, i8, i8, i32 }
%struct.ngx_file_s = type { i32, %struct.ngx_str_t, %struct.stat, i64, i64, %struct.ngx_log_s*, i8 }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.ngx_listening_s = type { i32, %struct.sockaddr*, i32, i32, %struct.ngx_str_t, i32, i32, i32, i32, i32, i32, i32, void (%struct.ngx_connection_s*)*, i8*, %struct.ngx_log_s, %struct.ngx_log_s*, i32, i32, i32, %struct.ngx_listening_s*, %struct.ngx_connection_s*, i8, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ngx_pool_s = type { %struct.ngx_pool_data_t, i32, %struct.ngx_pool_s*, %struct.ngx_chain_s*, %struct.ngx_pool_large_s*, %struct.ngx_pool_cleanup_s*, %struct.ngx_log_s* }
%struct.ngx_pool_data_t = type { i8*, i8*, %struct.ngx_pool_s*, i32 }
%struct.ngx_pool_large_s = type { %struct.ngx_pool_large_s*, i8* }
%struct.ngx_pool_cleanup_s = type { void (i8*)*, i8*, %struct.ngx_pool_cleanup_s* }
%struct.ngx_queue_s = type { %struct.ngx_queue_s*, %struct.ngx_queue_s* }
%struct.ngx_http_cache_s = type { %struct.ngx_file_s, %struct.ngx_array_s, i32, [16 x i8], i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, %struct.ngx_buf_s*, %struct.ngx_http_file_cache_s*, %struct.ngx_http_file_cache_node_t*, i32, i32, %struct.ngx_event_s, i8 }
%struct.ngx_array_s = type { i8*, i32, i32, i32, %struct.ngx_pool_s* }
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
%struct.ngx_conf_s = type { i8*, %struct.ngx_array_s*, %struct.ngx_cycle_s*, %struct.ngx_pool_s*, %struct.ngx_pool_s*, %struct.ngx_conf_file_t*, %struct.ngx_log_s*, i8*, i32, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i8* }
%struct.ngx_cycle_s = type { i8****, %struct.ngx_pool_s*, %struct.ngx_log_s*, %struct.ngx_log_s, %struct.ngx_connection_s**, %struct.ngx_connection_s*, i32, %struct.ngx_queue_s, %struct.ngx_array_s, %struct.ngx_array_s, %struct.ngx_list_t, %struct.ngx_list_t, i32, i32, %struct.ngx_connection_s*, %struct.ngx_event_s*, %struct.ngx_event_s*, %struct.ngx_cycle_s*, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t }
%struct.ngx_list_t = type { %struct.ngx_list_part_s*, %struct.ngx_list_part_s, i32, i32, %struct.ngx_pool_s* }
%struct.ngx_list_part_s = type { i8*, i32, %struct.ngx_list_part_s* }
%struct.ngx_conf_file_t = type { %struct.ngx_file_s, %struct.ngx_buf_s*, i32 }
%struct.ngx_command_s = type { %struct.ngx_str_t, i32, {}*, i32, i32, i8* }
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
%struct.ngx_http_status_t = type { i32, i32, i32, i8*, i8* }

@usual = internal unnamed_addr constant [8 x i32] [i32 -9218, i32 2147432406, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@ngx_http_parse_header_line.lowcase = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00-\00\000123456789\00\00\00\00\00\00\00abcdefghijklmnopqrstuvwxyz\00\00\00\00\00\00abcdefghijklmnopqrstuvwxyz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"HTTP\00", align 1
@0 = internal unnamed_addr constant [7 x i8] c"u_char\00"
@1 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@2 = internal unnamed_addr constant [2 x i8] c"*\00"
@3 = internal unnamed_addr constant [2 x i8] c"+\00"
@4 = internal unnamed_addr constant [3 x i8] c"<<\00"
@5 = internal unnamed_addr constant [3 x i8] c"-=\00"
@6 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@.str1 = private unnamed_addr constant [29 x i8] c"unsafe URI \22%V\22 was detected\00", align 1
@7 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@8 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@9 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@10 = internal unnamed_addr constant [2 x i8] c"-\00"
@11 = internal unnamed_addr constant [4 x i8] c"int\00"
@12 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@13 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@14 = internal unnamed_addr constant [26 x i8] c"src/http/ngx_http_parse.c\00"

define i32 @ngx_http_parse_request_line(%struct.ngx_http_request_s* %r, %struct.ngx_buf_s* nocapture %b) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1576), !dbg !1769
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_buf_s* %b}, i64 0, metadata !1577), !dbg !1769
  %state1 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 60, !dbg !1770
  %0 = load i32* %state1, align 4, !dbg !1770, !tbaa !1771
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !1583), !dbg !1770
  %pos = getelementptr inbounds %struct.ngx_buf_s* %b, i32 0, i32 0, !dbg !1774
  %1 = load i8** %pos, align 4, !dbg !1774, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !1581), !dbg !1774
  %last = getelementptr inbounds %struct.ngx_buf_s* %b, i32 0, i32 1, !dbg !1774
  %2 = load i8** %last, align 4, !dbg !1774, !tbaa !1776
  %cmp1410 = icmp ult i8* %1, %2, !dbg !1774
  br i1 %cmp1410, label %for.body.lr.ph, label %for.end, !dbg !1774

for.body.lr.ph:                                   ; preds = %entry
  %request_start = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 72, !dbg !1777
  %method_end = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 74, !dbg !1781
  %method = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 19, !dbg !1784
  %uri_start = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 68, !dbg !1788
  %schema_start = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 75, !dbg !1791
  %schema_end = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 76, !dbg !1793
  %host_start = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 77, !dbg !1797
  %host_end = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 78, !dbg !1799
  %uri_end = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 69, !dbg !1801
  %port_end = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 80, !dbg !1804
  %3 = getelementptr %struct.ngx_http_request_s* %r, i32 0, i32 81, i32 0, !dbg !1808
  %4 = bitcast i8* %3 to i32*, !dbg !1808
  %data = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 27, i32 1, !dbg !1812
  %5 = getelementptr %struct.ngx_http_request_s* %r, i32 0, i32 49, !dbg !1814
  %6 = bitcast i8* %5 to i32*, !dbg !1814
  %args_start = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 71, !dbg !1818
  %uri_ext = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 70, !dbg !1820
  %7 = getelementptr %struct.ngx_http_request_s* %r, i32 0, i32 53, !dbg !1824
  %8 = bitcast i8* %7 to i32*, !dbg !1824
  br label %for.body, !dbg !1774

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %state.01413 = phi i32 [ %0, %for.body.lr.ph ], [ %state.2, %for.inc ]
  %p.01411 = phi i8* [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %9 = load i8* %p.01411, align 1, !dbg !1828, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %9}, i64 0, metadata !1580), !dbg !1828
  switch i32 %state.01413, label %for.inc [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
    i32 2, label %sw.bb470
    i32 3, label %sw.bb495
    i32 4, label %sw.bb518
    i32 5, label %sw.bb525
    i32 6, label %sw.bb532
    i32 7, label %sw.bb542
    i32 8, label %for.body.sw.bb576_crit_edge
    i32 9, label %sw.bb595
    i32 10, label %sw.bb640
    i32 11, label %sw.bb667
    i32 12, label %sw.bb683
    i32 13, label %sw.bb756
    i32 14, label %sw.bb824
    i32 15, label %sw.bb848
    i32 16, label %sw.bb893
    i32 17, label %sw.bb917
    i32 18, label %sw.bb924
    i32 19, label %sw.bb931
    i32 20, label %sw.bb938
    i32 21, label %sw.bb945
    i32 22, label %sw.bb964
    i32 23, label %sw.bb996
    i32 24, label %sw.bb1016
    i32 25, label %sw.bb1066
    i32 26, label %sw.bb1074
  ], !dbg !1829

for.body.sw.bb576_crit_edge:                      ; preds = %for.body
  %conv577.pre = zext i8 %9 to i32, !dbg !1830
  br label %sw.bb576, !dbg !1829

sw.bb:                                            ; preds = %for.body
  store i8* %p.01411, i8** %request_start, align 4, !dbg !1777, !tbaa !1776
  switch i8 %9, label %if.end [
    i8 13, label %for.inc
    i8 10, label %for.inc
  ], !dbg !1831

if.end:                                           ; preds = %sw.bb
  %.off1382 = add i8 %9, -65, !dbg !1832
  %or.cond.not = icmp ult i8 %.off1382, 26, !dbg !1832
  %cmp17 = icmp eq i8 %9, 95, !dbg !1832
  %or.cond1356 = or i1 %or.cond.not, %cmp17, !dbg !1832
  br i1 %or.cond1356, label %for.inc, label %return, !dbg !1832

sw.bb23:                                          ; preds = %for.body
  %cmp25 = icmp eq i8 %9, 32, !dbg !1833
  br i1 %cmp25, label %if.then27, label %if.end456, !dbg !1833

if.then27:                                        ; preds = %sw.bb23
  %add.ptr = getelementptr inbounds i8* %p.01411, i32 -1, !dbg !1781
  store i8* %add.ptr, i8** %method_end, align 4, !dbg !1781, !tbaa !1776
  %10 = load i8** %request_start, align 4, !dbg !1834, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !{i8* %10}, i64 0, metadata !1582), !dbg !1834
  %sub.ptr.lhs.cast = ptrtoint i8* %p.01411 to i32, !dbg !1835
  %sub.ptr.rhs.cast = ptrtoint i8* %10 to i32, !dbg !1835
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1835
  switch i32 %sub.ptr.sub, label %for.inc [
    i32 3, label %sw.bb29
    i32 4, label %sw.bb71
    i32 5, label %sw.bb182
    i32 6, label %sw.bb261
    i32 7, label %sw.bb329
    i32 8, label %sw.bb369
    i32 9, label %sw.bb409
  ], !dbg !1835

sw.bb29:                                          ; preds = %if.then27
  %11 = bitcast i8* %10 to i32*, !dbg !1836
  %12 = load i32* %11, align 4, !dbg !1836, !tbaa !1771
  switch i32 %12, label %for.inc [
    i32 542393671, label %cont48
    i32 542397776, label %cont68
  ], !dbg !1836

cont48:                                           ; preds = %sw.bb29
  store i32 2, i32* %method, align 4, !dbg !1784, !tbaa !1771
  br label %for.inc, !dbg !1837

cont68:                                           ; preds = %sw.bb29
  store i32 16, i32* %method, align 4, !dbg !1838, !tbaa !1771
  br label %for.inc, !dbg !1840

sw.bb71:                                          ; preds = %if.then27
  %arrayidx = getelementptr inbounds i8* %10, i32 1, !dbg !1841
  %13 = load i8* %arrayidx, align 1, !dbg !1841, !tbaa !1772
  %cmp73 = icmp eq i8 %13, 79, !dbg !1841
  %14 = bitcast i8* %10 to i32*, !dbg !1843
  %15 = load i32* %14, align 4, !dbg !1843, !tbaa !1771
  br i1 %cmp73, label %cont89, label %cont173, !dbg !1841

cont89:                                           ; preds = %sw.bb71
  switch i32 %15, label %for.inc [
    i32 1414745936, label %cont94
    i32 1498435395, label %cont115
    i32 1163284301, label %cont136
    i32 1262702412, label %cont157
  ], !dbg !1843

cont94:                                           ; preds = %cont89
  store i32 8, i32* %method, align 4, !dbg !1845, !tbaa !1771
  br label %for.inc, !dbg !1847

cont115:                                          ; preds = %cont89
  store i32 128, i32* %method, align 4, !dbg !1848, !tbaa !1771
  br label %for.inc, !dbg !1850

cont136:                                          ; preds = %cont89
  store i32 256, i32* %method, align 4, !dbg !1851, !tbaa !1771
  br label %for.inc, !dbg !1853

cont157:                                          ; preds = %cont89
  store i32 4096, i32* %method, align 4, !dbg !1854, !tbaa !1771
  br label %for.inc, !dbg !1856

cont173:                                          ; preds = %sw.bb71
  %cmp174 = icmp eq i32 %15, 1145128264, !dbg !1857
  br i1 %cmp174, label %cont178, label %for.inc, !dbg !1857

cont178:                                          ; preds = %cont173
  store i32 4, i32* %method, align 4, !dbg !1859, !tbaa !1771
  br label %for.inc, !dbg !1861

sw.bb182:                                         ; preds = %if.then27
  %16 = bitcast i8* %10 to i32*, !dbg !1862
  %17 = load i32* %16, align 4, !dbg !1862, !tbaa !1771
  %cmp197 = icmp eq i32 %17, 1329810253, !dbg !1862
  br i1 %cmp197, label %land.lhs.true199, label %if.end208, !dbg !1862

land.lhs.true199:                                 ; preds = %sw.bb182
  %arrayidx200 = getelementptr inbounds i8* %10, i32 4, !dbg !1862
  %18 = load i8* %arrayidx200, align 1, !dbg !1862, !tbaa !1772
  %cmp202 = icmp eq i8 %18, 76, !dbg !1862
  br i1 %cmp202, label %cont206, label %for.inc, !dbg !1862

cont206:                                          ; preds = %land.lhs.true199
  store i32 64, i32* %method, align 4, !dbg !1864, !tbaa !1771
  %.pr.pre = load i32* %16, align 4, !dbg !1866, !tbaa !1771
  br label %if.end208, !dbg !1867

if.end208:                                        ; preds = %cont206, %sw.bb182
  %19 = phi i32 [ %17, %sw.bb182 ], [ %.pr.pre, %cont206 ], !dbg !1866
  %cmp223 = icmp eq i32 %19, 1129595216, !dbg !1866
  br i1 %cmp223, label %land.lhs.true225, label %if.end234, !dbg !1866

land.lhs.true225:                                 ; preds = %if.end208
  %arrayidx226 = getelementptr inbounds i8* %10, i32 4, !dbg !1866
  %20 = load i8* %arrayidx226, align 1, !dbg !1866, !tbaa !1772
  %cmp228 = icmp eq i8 %20, 72, !dbg !1866
  br i1 %cmp228, label %cont232, label %for.inc, !dbg !1866

cont232:                                          ; preds = %land.lhs.true225
  store i32 16384, i32* %method, align 4, !dbg !1868, !tbaa !1771
  %.pre = load i32* %16, align 4, !dbg !1870, !tbaa !1771
  br label %if.end234, !dbg !1871

if.end234:                                        ; preds = %cont232, %if.end208
  %21 = phi i32 [ %.pre, %cont232 ], [ %19, %if.end208 ]
  %cmp249 = icmp eq i32 %21, 1128354388, !dbg !1870
  br i1 %cmp249, label %land.lhs.true251, label %for.inc, !dbg !1870

land.lhs.true251:                                 ; preds = %if.end234
  %arrayidx252 = getelementptr inbounds i8* %10, i32 4, !dbg !1870
  %22 = load i8* %arrayidx252, align 1, !dbg !1870, !tbaa !1772
  %cmp254 = icmp eq i8 %22, 69, !dbg !1870
  br i1 %cmp254, label %cont258, label %for.inc, !dbg !1870

cont258:                                          ; preds = %land.lhs.true251
  store i32 32768, i32* %method, align 4, !dbg !1872, !tbaa !1771
  br label %for.inc, !dbg !1874

sw.bb261:                                         ; preds = %if.then27
  %23 = bitcast i8* %10 to i32*, !dbg !1875
  %24 = load i32* %23, align 4, !dbg !1875, !tbaa !1771
  switch i32 %24, label %for.inc [
    i32 1162626372, label %cont281
    i32 1330400853, label %cont314
  ], !dbg !1875

cont281:                                          ; preds = %sw.bb261
  %arrayidx279 = getelementptr inbounds i8* %10, i32 4, !dbg !1875
  %25 = bitcast i8* %arrayidx279 to i32*, !dbg !1875
  %26 = load i32* %25, align 4, !dbg !1875, !tbaa !1771
  %and = and i32 %26, 65535, !dbg !1875
  %cmp288 = icmp eq i32 %and, 17748, !dbg !1875
  br i1 %cmp288, label %cont292, label %for.inc, !dbg !1875

cont292:                                          ; preds = %cont281
  store i32 32, i32* %method, align 4, !dbg !1877, !tbaa !1771
  br label %for.inc, !dbg !1879

cont314:                                          ; preds = %sw.bb261
  %arrayidx312 = getelementptr inbounds i8* %10, i32 4, !dbg !1880
  %27 = bitcast i8* %arrayidx312 to i32*, !dbg !1880
  %28 = load i32* %27, align 4, !dbg !1880, !tbaa !1771
  %and315 = and i32 %28, 65535, !dbg !1880
  %cmp322 = icmp eq i32 %and315, 19267, !dbg !1880
  br i1 %cmp322, label %cont326, label %for.inc, !dbg !1880

cont326:                                          ; preds = %cont314
  store i32 8192, i32* %method, align 4, !dbg !1881, !tbaa !1771
  br label %for.inc, !dbg !1883

sw.bb329:                                         ; preds = %if.then27
  %29 = bitcast i8* %10 to i32*, !dbg !1884
  %30 = load i32* %29, align 4, !dbg !1884, !tbaa !1771
  %cmp344 = icmp eq i32 %30, 1230262351, !dbg !1884
  br i1 %cmp344, label %land.lhs.true346, label %for.inc, !dbg !1884

land.lhs.true346:                                 ; preds = %sw.bb329
  %arrayidx347 = getelementptr inbounds i8* %10, i32 4, !dbg !1884
  %31 = bitcast i8* %arrayidx347 to i32*, !dbg !1884
  %32 = load i32* %31, align 4, !dbg !1884, !tbaa !1771
  %cmp362 = icmp eq i32 %32, 542330447, !dbg !1884
  br i1 %cmp362, label %cont366, label %for.inc, !dbg !1884

cont366:                                          ; preds = %land.lhs.true346
  store i32 512, i32* %method, align 4, !dbg !1886, !tbaa !1771
  br label %for.inc, !dbg !1888

sw.bb369:                                         ; preds = %if.then27
  %33 = bitcast i8* %10 to i32*, !dbg !1889
  %34 = load i32* %33, align 4, !dbg !1889, !tbaa !1771
  %cmp384 = icmp eq i32 %34, 1347375696, !dbg !1889
  br i1 %cmp384, label %land.lhs.true386, label %for.inc, !dbg !1889

land.lhs.true386:                                 ; preds = %sw.bb369
  %arrayidx387 = getelementptr inbounds i8* %10, i32 4, !dbg !1889
  %35 = bitcast i8* %arrayidx387 to i32*, !dbg !1889
  %36 = load i32* %35, align 4, !dbg !1889, !tbaa !1771
  %cmp402 = icmp eq i32 %36, 1145981254, !dbg !1889
  br i1 %cmp402, label %cont406, label %for.inc, !dbg !1889

cont406:                                          ; preds = %land.lhs.true386
  store i32 1024, i32* %method, align 4, !dbg !1891, !tbaa !1771
  br label %for.inc, !dbg !1893

sw.bb409:                                         ; preds = %if.then27
  %37 = bitcast i8* %10 to i32*, !dbg !1894
  %38 = load i32* %37, align 4, !dbg !1894, !tbaa !1771
  %cmp424 = icmp eq i32 %38, 1347375696, !dbg !1894
  br i1 %cmp424, label %land.lhs.true426, label %for.inc, !dbg !1894

land.lhs.true426:                                 ; preds = %sw.bb409
  %arrayidx427 = getelementptr inbounds i8* %10, i32 4, !dbg !1894
  %39 = bitcast i8* %arrayidx427 to i32*, !dbg !1894
  %40 = load i32* %39, align 4, !dbg !1894, !tbaa !1771
  %cmp442 = icmp eq i32 %40, 1129595216, !dbg !1894
  br i1 %cmp442, label %land.lhs.true444, label %for.inc, !dbg !1894

land.lhs.true444:                                 ; preds = %land.lhs.true426
  %arrayidx445 = getelementptr inbounds i8* %10, i32 8, !dbg !1894
  %41 = load i8* %arrayidx445, align 1, !dbg !1894, !tbaa !1772
  %cmp447 = icmp eq i8 %41, 72, !dbg !1894
  br i1 %cmp447, label %cont451, label %for.inc, !dbg !1894

cont451:                                          ; preds = %land.lhs.true444
  store i32 2048, i32* %method, align 4, !dbg !1896, !tbaa !1771
  br label %for.inc, !dbg !1898

if.end456:                                        ; preds = %sw.bb23
  %.off1381 = add i8 %9, -65, !dbg !1899
  %or.cond1357.not = icmp ult i8 %.off1381, 26, !dbg !1899
  %cmp466 = icmp eq i8 %9, 95, !dbg !1899
  %or.cond1358 = or i1 %or.cond1357.not, %cmp466, !dbg !1899
  br i1 %or.cond1358, label %for.inc, label %return, !dbg !1899

sw.bb470:                                         ; preds = %for.body
  %cmp472 = icmp eq i8 %9, 47, !dbg !1900
  br i1 %cmp472, label %if.then474, label %if.end477, !dbg !1900

if.then474:                                       ; preds = %sw.bb470
  store i8* %p.01411, i8** %uri_start, align 4, !dbg !1788, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1901, i64 0, metadata !1583), !dbg !1902
  br label %for.inc, !dbg !1903

if.end477:                                        ; preds = %sw.bb470
  %conv471 = zext i8 %9 to i32, !dbg !1900
  %or = or i32 %conv471, 32, !dbg !1904
  %or.off = add i32 %or, -97, !dbg !1905
  %42 = icmp ult i32 %or.off, 26, !dbg !1905
  br i1 %42, label %if.then489, label %if.end492, !dbg !1905

if.then489:                                       ; preds = %if.end477
  store i8* %p.01411, i8** %schema_start, align 4, !dbg !1791, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1906, i64 0, metadata !1583), !dbg !1907
  br label %for.inc, !dbg !1908

if.end492:                                        ; preds = %if.end477
  %cond1132 = icmp eq i8 %9, 32, !dbg !1909
  br i1 %cond1132, label %for.inc, label %return, !dbg !1909

sw.bb495:                                         ; preds = %for.body
  %conv496 = zext i8 %9 to i32, !dbg !1910
  %or497 = or i32 %conv496, 32, !dbg !1910
  %or497.off = add i32 %or497, -97, !dbg !1911
  %43 = icmp ult i32 %or497.off, 26, !dbg !1911
  br i1 %43, label %for.inc, label %if.end511, !dbg !1911

if.end511:                                        ; preds = %sw.bb495
  %cond1131 = icmp eq i8 %9, 58, !dbg !1912
  br i1 %cond1131, label %sw.bb513, label %return, !dbg !1912

sw.bb513:                                         ; preds = %if.end511
  store i8* %p.01411, i8** %schema_end, align 4, !dbg !1793, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1913, i64 0, metadata !1583), !dbg !1914
  br label %for.inc, !dbg !1915

sw.bb518:                                         ; preds = %for.body
  %cond1130 = icmp eq i8 %9, 47, !dbg !1916
  br i1 %cond1130, label %for.inc, label %return, !dbg !1916

sw.bb525:                                         ; preds = %for.body
  %cond1129 = icmp eq i8 %9, 47, !dbg !1918
  br i1 %cond1129, label %for.inc, label %return, !dbg !1918

sw.bb532:                                         ; preds = %for.body
  store i8* %p.01411, i8** %host_start, align 4, !dbg !1797, !tbaa !1776
  %cmp534 = icmp eq i8 %9, 91, !dbg !1920
  br i1 %cmp534, label %for.inc, label %sw.bb542, !dbg !1920

sw.bb542:                                         ; preds = %sw.bb532, %for.body
  %conv543 = zext i8 %9 to i32, !dbg !1921
  %or544 = or i32 %conv543, 32, !dbg !1921
  %or544.off = add i32 %or544, -97, !dbg !1923
  %44 = icmp ult i32 %or544.off, 26, !dbg !1923
  br i1 %44, label %for.inc, label %if.end558, !dbg !1923

if.end558:                                        ; preds = %sw.bb542
  %.off1380 = add i8 %9, -48, !dbg !1924
  %45 = icmp ult i8 %.off1380, 10, !dbg !1924
  %.off = add i8 %9, -45, !dbg !1924
  %switch = icmp ult i8 %.off, 2, !dbg !1924
  %or.cond1372 = or i1 %45, %switch
  br i1 %or.cond1372, label %for.inc, label %sw.bb576

sw.bb576:                                         ; preds = %for.body.sw.bb576_crit_edge, %if.end558
  %conv577.pre-phi = phi i32 [ %conv577.pre, %for.body.sw.bb576_crit_edge ], [ %conv543, %if.end558 ], !dbg !1830
  store i8* %p.01411, i8** %host_end, align 4, !dbg !1799, !tbaa !1776
  switch i32 %conv577.pre-phi, label %return [
    i32 58, label %for.inc
    i32 47, label %sw.bb581
    i32 32, label %sw.bb585
  ], !dbg !1830

sw.bb581:                                         ; preds = %sw.bb576
  store i8* %p.01411, i8** %uri_start, align 4, !dbg !1925, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1901, i64 0, metadata !1583), !dbg !1927
  br label %for.inc, !dbg !1928

sw.bb585:                                         ; preds = %sw.bb576
  %46 = load i8** %schema_end, align 4, !dbg !1929, !tbaa !1776
  %add.ptr587 = getelementptr inbounds i8* %46, i32 1, !dbg !1929
  store i8* %add.ptr587, i8** %uri_start, align 4, !dbg !1929, !tbaa !1776
  %add.ptr590 = getelementptr inbounds i8* %46, i32 2, !dbg !1801
  store i8* %add.ptr590, i8** %uri_end, align 4, !dbg !1801, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1930, i64 0, metadata !1583), !dbg !1931
  br label %for.inc, !dbg !1932

sw.bb595:                                         ; preds = %for.body
  %conv596 = zext i8 %9 to i32, !dbg !1933
  %.off1379 = add i8 %9, -48, !dbg !1933
  %47 = icmp ult i8 %.off1379, 10, !dbg !1933
  br i1 %47, label %for.inc, label %if.end604, !dbg !1933

if.end604:                                        ; preds = %sw.bb595
  %or606 = or i32 %conv596, 32, !dbg !1935
  %or606.off = add i32 %or606, -97, !dbg !1936
  %48 = icmp ult i32 %or606.off, 26, !dbg !1936
  br i1 %48, label %for.inc, label %if.end620, !dbg !1936

if.end620:                                        ; preds = %if.end604
  switch i32 %conv596, label %return [
    i32 58, label %for.inc
    i32 93, label %cont624
    i32 45, label %for.inc
    i32 46, label %for.inc
    i32 95, label %for.inc
    i32 126, label %for.inc
    i32 33, label %for.inc
    i32 36, label %for.inc
    i32 38, label %for.inc
    i32 39, label %for.inc
    i32 40, label %for.inc
    i32 41, label %for.inc
    i32 42, label %for.inc
    i32 43, label %for.inc
    i32 44, label %for.inc
    i32 59, label %for.inc
    i32 61, label %for.inc
  ], !dbg !1937

cont624:                                          ; preds = %if.end620
  tail call void @llvm.dbg.value(metadata !1938, i64 0, metadata !1583), !dbg !1939
  br label %for.inc, !dbg !1942

sw.bb640:                                         ; preds = %for.body
  %.off1378 = add i8 %9, -48, !dbg !1943
  %49 = icmp ult i8 %.off1378, 10, !dbg !1943
  br i1 %49, label %for.inc, label %if.end649, !dbg !1943

if.end649:                                        ; preds = %sw.bb640
  %conv641 = zext i8 %9 to i32, !dbg !1943
  switch i32 %conv641, label %return [
    i32 47, label %sw.bb651
    i32 32, label %sw.bb655
  ], !dbg !1944

sw.bb651:                                         ; preds = %if.end649
  store i8* %p.01411, i8** %port_end, align 4, !dbg !1804, !tbaa !1776
  store i8* %p.01411, i8** %uri_start, align 4, !dbg !1945, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1901, i64 0, metadata !1583), !dbg !1946
  br label %for.inc, !dbg !1947

sw.bb655:                                         ; preds = %if.end649
  store i8* %p.01411, i8** %port_end, align 4, !dbg !1948, !tbaa !1776
  %50 = load i8** %schema_end, align 4, !dbg !1950, !tbaa !1776
  %add.ptr658 = getelementptr inbounds i8* %50, i32 1, !dbg !1950
  store i8* %add.ptr658, i8** %uri_start, align 4, !dbg !1950, !tbaa !1776
  %add.ptr661 = getelementptr inbounds i8* %50, i32 2, !dbg !1951
  store i8* %add.ptr661, i8** %uri_end, align 4, !dbg !1951, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1930, i64 0, metadata !1583), !dbg !1952
  br label %for.inc, !dbg !1953

sw.bb667:                                         ; preds = %for.body
  %conv668 = zext i8 %9 to i32, !dbg !1954
  switch i32 %conv668, label %return [
    i32 32, label %for.inc
    i32 13, label %cont671
    i32 10, label %cont676
    i32 72, label %sw.bb678
  ], !dbg !1954

cont671:                                          ; preds = %sw.bb667
  %51 = load i32* %4, align 4, !dbg !1808
  %52 = and i32 %51, -65536, !dbg !1808
  %53 = or i32 %52, 9, !dbg !1808
  store i32 %53, i32* %4, align 4, !dbg !1808
  tail call void @llvm.dbg.value(metadata !1955, i64 0, metadata !1583), !dbg !1956
  br label %for.inc, !dbg !1957

cont676:                                          ; preds = %sw.bb667
  %54 = load i32* %4, align 4, !dbg !1958
  %55 = and i32 %54, -65536, !dbg !1958
  %56 = or i32 %55, 9, !dbg !1958
  store i32 %56, i32* %4, align 4, !dbg !1958
  br label %done, !dbg !1960

sw.bb678:                                         ; preds = %sw.bb667
  store i8* %p.01411, i8** %data, align 4, !dbg !1812, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1961, i64 0, metadata !1583), !dbg !1962
  br label %for.inc, !dbg !1963

sw.bb683:                                         ; preds = %for.body
  %conv684 = zext i8 %9 to i32, !dbg !1964
  %shr1355 = lshr i32 %conv684, 5, !dbg !1964
  %arrayidx687 = getelementptr inbounds [8 x i32]* @usual, i32 0, i32 %shr1355, !dbg !1964
  %57 = load i32* %arrayidx687, align 4, !dbg !1964, !tbaa !1771
  %and689 = and i32 %conv684, 31, !dbg !1964
  %58 = xor i32 %and689, 31, !dbg !1964
  %shl.check = lshr i32 1, %58, !dbg !1964
  %59 = icmp eq i32 %shl.check, 0, !dbg !1964
  br i1 %59, label %cont693, label %ioc_bb692, !dbg !1964

ioc_bb692:                                        ; preds = %sw.bb683
  %60 = zext i32 %and689 to i64, !dbg !1964
  tail call void @__ioc_report_shl_strict(i32 442, i32 33, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 1, i64 %60, i8 13) nounwind, !dbg !1964
  br label %cont693, !dbg !1964

cont693:                                          ; preds = %ioc_bb692, %sw.bb683
  %shl = shl i32 1, %and689, !dbg !1964
  %61 = icmp sgt i32 %shl, -1, !dbg !1964
  br i1 %61, label %cont696, label %ioc_bb695, !dbg !1964

ioc_bb695:                                        ; preds = %cont693
  %62 = sext i32 %shl to i64, !dbg !1964
  tail call void @__ioc_report_conversion(i32 442, i32 30, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %62, i8 1) nounwind, !dbg !1964
  br label %cont696, !dbg !1964

cont696:                                          ; preds = %ioc_bb695, %cont693
  %and697 = and i32 %57, %shl, !dbg !1964
  %tobool = icmp eq i32 %and697, 0, !dbg !1964
  br i1 %tobool, label %if.end701, label %for.inc, !dbg !1964

if.end701:                                        ; preds = %cont696
  switch i32 %conv684, label %for.inc [
    i32 32, label %sw.bb703
    i32 13, label %sw.bb707
    i32 10, label %sw.bb714
    i32 46, label %cont721
    i32 37, label %cont727
    i32 47, label %cont733
    i32 63, label %sw.bb737
    i32 35, label %cont743
    i32 43, label %cont749
    i32 0, label %return
  ], !dbg !1965

sw.bb703:                                         ; preds = %if.end701
  store i8* %p.01411, i8** %uri_end, align 4, !dbg !1966, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1968, i64 0, metadata !1583), !dbg !1969
  br label %for.inc, !dbg !1970

sw.bb707:                                         ; preds = %if.end701
  store i8* %p.01411, i8** %uri_end, align 4, !dbg !1971, !tbaa !1776
  %63 = load i32* %4, align 4, !dbg !1973
  %64 = and i32 %63, -65536, !dbg !1973
  %65 = or i32 %64, 9, !dbg !1973
  store i32 %65, i32* %4, align 4, !dbg !1973
  tail call void @llvm.dbg.value(metadata !1955, i64 0, metadata !1583), !dbg !1974
  br label %for.inc, !dbg !1975

sw.bb714:                                         ; preds = %if.end701
  store i8* %p.01411, i8** %uri_end, align 4, !dbg !1976, !tbaa !1776
  %66 = load i32* %4, align 4, !dbg !1978
  %67 = and i32 %66, -65536, !dbg !1978
  %68 = or i32 %67, 9, !dbg !1978
  store i32 %68, i32* %4, align 4, !dbg !1978
  br label %done, !dbg !1979

cont721:                                          ; preds = %if.end701
  %69 = load i32* %6, align 4, !dbg !1814
  %70 = or i32 %69, 536870912, !dbg !1814
  store i32 %70, i32* %6, align 4, !dbg !1814
  tail call void @llvm.dbg.value(metadata !1980, i64 0, metadata !1583), !dbg !1981
  br label %for.inc, !dbg !1982

cont727:                                          ; preds = %if.end701
  %71 = load i32* %6, align 4, !dbg !1983
  %72 = or i32 %71, 1073741824, !dbg !1983
  store i32 %72, i32* %6, align 4, !dbg !1983
  tail call void @llvm.dbg.value(metadata !1980, i64 0, metadata !1583), !dbg !1985
  br label %for.inc, !dbg !1986

cont733:                                          ; preds = %if.end701
  %73 = load i32* %6, align 4, !dbg !1987
  %74 = or i32 %73, 536870912, !dbg !1987
  store i32 %74, i32* %6, align 4, !dbg !1987
  tail call void @llvm.dbg.value(metadata !1980, i64 0, metadata !1583), !dbg !1989
  br label %for.inc, !dbg !1990

sw.bb737:                                         ; preds = %if.end701
  %add.ptr738 = getelementptr inbounds i8* %p.01411, i32 1, !dbg !1818
  store i8* %add.ptr738, i8** %args_start, align 4, !dbg !1818, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1980, i64 0, metadata !1583), !dbg !1991
  br label %for.inc, !dbg !1992

cont743:                                          ; preds = %if.end701
  %75 = load i32* %6, align 4, !dbg !1993
  %76 = or i32 %75, 536870912, !dbg !1993
  store i32 %76, i32* %6, align 4, !dbg !1993
  tail call void @llvm.dbg.value(metadata !1980, i64 0, metadata !1583), !dbg !1995
  br label %for.inc, !dbg !1996

cont749:                                          ; preds = %if.end701
  %77 = load i32* %6, align 4, !dbg !1997
  %78 = or i32 %77, -2147483648, !dbg !1997
  store i32 %78, i32* %6, align 4, !dbg !1997
  br label %for.inc, !dbg !1999

sw.bb756:                                         ; preds = %for.body
  %conv757 = zext i8 %9 to i32, !dbg !2000
  %shr7601354 = lshr i32 %conv757, 5, !dbg !2000
  %arrayidx761 = getelementptr inbounds [8 x i32]* @usual, i32 0, i32 %shr7601354, !dbg !2000
  %79 = load i32* %arrayidx761, align 4, !dbg !2000, !tbaa !1771
  %and763 = and i32 %conv757, 31, !dbg !2000
  %80 = xor i32 %and763, 31, !dbg !2000
  %shl.check767 = lshr i32 1, %80, !dbg !2000
  %81 = icmp eq i32 %shl.check767, 0, !dbg !2000
  br i1 %81, label %cont769, label %ioc_bb768, !dbg !2000

ioc_bb768:                                        ; preds = %sw.bb756
  %82 = zext i32 %and763 to i64, !dbg !2000
  tail call void @__ioc_report_shl_strict(i32 516, i32 33, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 1, i64 %82, i8 13) nounwind, !dbg !2000
  br label %cont769, !dbg !2000

cont769:                                          ; preds = %ioc_bb768, %sw.bb756
  %shl770 = shl i32 1, %and763, !dbg !2000
  %83 = icmp sgt i32 %shl770, -1, !dbg !2000
  br i1 %83, label %cont773, label %ioc_bb772, !dbg !2000

ioc_bb772:                                        ; preds = %cont769
  %84 = sext i32 %shl770 to i64, !dbg !2000
  tail call void @__ioc_report_conversion(i32 516, i32 30, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %84, i8 1) nounwind, !dbg !2000
  br label %cont773, !dbg !2000

cont773:                                          ; preds = %ioc_bb772, %cont769
  %and774 = and i32 %79, %shl770, !dbg !2000
  %tobool775 = icmp eq i32 %and774, 0, !dbg !2000
  br i1 %tobool775, label %if.end777, label %for.inc, !dbg !2000

if.end777:                                        ; preds = %cont773
  switch i32 %conv757, label %for.inc [
    i32 47, label %sw.bb779
    i32 46, label %sw.bb782
    i32 32, label %sw.bb785
    i32 13, label %sw.bb789
    i32 10, label %sw.bb796
    i32 37, label %cont803
    i32 63, label %sw.bb807
    i32 35, label %cont814
    i32 43, label %cont820
    i32 0, label %return
  ], !dbg !2001

sw.bb779:                                         ; preds = %if.end777
  store i8* null, i8** %uri_ext, align 4, !dbg !1820, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1901, i64 0, metadata !1583), !dbg !2002
  br label %for.inc, !dbg !2003

sw.bb782:                                         ; preds = %if.end777
  %add.ptr783 = getelementptr inbounds i8* %p.01411, i32 1, !dbg !2004
  store i8* %add.ptr783, i8** %uri_ext, align 4, !dbg !2004, !tbaa !1776
  br label %for.inc, !dbg !2006

sw.bb785:                                         ; preds = %if.end777
  store i8* %p.01411, i8** %uri_end, align 4, !dbg !2007, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1968, i64 0, metadata !1583), !dbg !2009
  br label %for.inc, !dbg !2010

sw.bb789:                                         ; preds = %if.end777
  store i8* %p.01411, i8** %uri_end, align 4, !dbg !2011, !tbaa !1776
  %85 = load i32* %4, align 4, !dbg !2013
  %86 = and i32 %85, -65536, !dbg !2013
  %87 = or i32 %86, 9, !dbg !2013
  store i32 %87, i32* %4, align 4, !dbg !2013
  tail call void @llvm.dbg.value(metadata !1955, i64 0, metadata !1583), !dbg !2014
  br label %for.inc, !dbg !2015

sw.bb796:                                         ; preds = %if.end777
  store i8* %p.01411, i8** %uri_end, align 4, !dbg !2016, !tbaa !1776
  %88 = load i32* %4, align 4, !dbg !2018
  %89 = and i32 %88, -65536, !dbg !2018
  %90 = or i32 %89, 9, !dbg !2018
  store i32 %90, i32* %4, align 4, !dbg !2018
  br label %done, !dbg !2019

cont803:                                          ; preds = %if.end777
  %91 = load i32* %6, align 4, !dbg !2020
  %92 = or i32 %91, 1073741824, !dbg !2020
  store i32 %92, i32* %6, align 4, !dbg !2020
  tail call void @llvm.dbg.value(metadata !1980, i64 0, metadata !1583), !dbg !2022
  br label %for.inc, !dbg !2023

sw.bb807:                                         ; preds = %if.end777
  %add.ptr808 = getelementptr inbounds i8* %p.01411, i32 1, !dbg !2024
  store i8* %add.ptr808, i8** %args_start, align 4, !dbg !2024, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1980, i64 0, metadata !1583), !dbg !2026
  br label %for.inc, !dbg !2027

cont814:                                          ; preds = %if.end777
  %93 = load i32* %6, align 4, !dbg !2028
  %94 = or i32 %93, 536870912, !dbg !2028
  store i32 %94, i32* %6, align 4, !dbg !2028
  tail call void @llvm.dbg.value(metadata !1980, i64 0, metadata !1583), !dbg !2030
  br label %for.inc, !dbg !2031

cont820:                                          ; preds = %if.end777
  %95 = load i32* %6, align 4, !dbg !2032
  %96 = or i32 %95, -2147483648, !dbg !2032
  store i32 %96, i32* %6, align 4, !dbg !2032
  br label %for.inc, !dbg !2034

sw.bb824:                                         ; preds = %for.body
  %conv825 = zext i8 %9 to i32, !dbg !2035
  switch i32 %conv825, label %cont843 [
    i32 32, label %for.inc
    i32 13, label %cont828
    i32 10, label %cont834
    i32 72, label %sw.bb836
  ], !dbg !2035

cont828:                                          ; preds = %sw.bb824
  %97 = load i32* %4, align 4, !dbg !2036
  %98 = and i32 %97, -65536, !dbg !2036
  %99 = or i32 %98, 9, !dbg !2036
  store i32 %99, i32* %4, align 4, !dbg !2036
  tail call void @llvm.dbg.value(metadata !1955, i64 0, metadata !1583), !dbg !2038
  br label %for.inc, !dbg !2039

cont834:                                          ; preds = %sw.bb824
  %100 = load i32* %4, align 4, !dbg !2040
  %101 = and i32 %100, -65536, !dbg !2040
  %102 = or i32 %101, 9, !dbg !2040
  store i32 %102, i32* %4, align 4, !dbg !2040
  br label %done, !dbg !2042

sw.bb836:                                         ; preds = %sw.bb824
  store i8* %p.01411, i8** %data, align 4, !dbg !2043, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1961, i64 0, metadata !1583), !dbg !2045
  br label %for.inc, !dbg !2046

cont843:                                          ; preds = %sw.bb824
  %103 = load i32* %8, align 4, !dbg !1824
  %104 = or i32 %103, 1, !dbg !1824
  store i32 %104, i32* %8, align 4, !dbg !1824
  tail call void @llvm.dbg.value(metadata !2047, i64 0, metadata !1583), !dbg !2048
  br label %for.inc, !dbg !2049

sw.bb848:                                         ; preds = %for.body
  %conv849 = zext i8 %9 to i32, !dbg !2050
  %shr8521353 = lshr i32 %conv849, 5, !dbg !2050
  %arrayidx853 = getelementptr inbounds [8 x i32]* @usual, i32 0, i32 %shr8521353, !dbg !2050
  %105 = load i32* %arrayidx853, align 4, !dbg !2050, !tbaa !1771
  %and855 = and i32 %conv849, 31, !dbg !2050
  %106 = xor i32 %and855, 31, !dbg !2050
  %shl.check859 = lshr i32 1, %106, !dbg !2050
  %107 = icmp eq i32 %shl.check859, 0, !dbg !2050
  br i1 %107, label %cont861, label %ioc_bb860, !dbg !2050

ioc_bb860:                                        ; preds = %sw.bb848
  %108 = zext i32 %and855 to i64, !dbg !2050
  tail call void @__ioc_report_shl_strict(i32 617, i32 33, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 1, i64 %108, i8 13) nounwind, !dbg !2050
  br label %cont861, !dbg !2050

cont861:                                          ; preds = %ioc_bb860, %sw.bb848
  %shl862 = shl i32 1, %and855, !dbg !2050
  %109 = icmp sgt i32 %shl862, -1, !dbg !2050
  br i1 %109, label %cont865, label %ioc_bb864, !dbg !2050

ioc_bb864:                                        ; preds = %cont861
  %110 = sext i32 %shl862 to i64, !dbg !2050
  tail call void @__ioc_report_conversion(i32 617, i32 30, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %110, i8 1) nounwind, !dbg !2050
  br label %cont865, !dbg !2050

cont865:                                          ; preds = %ioc_bb864, %cont861
  %and866 = and i32 %105, %shl862, !dbg !2050
  %tobool867 = icmp eq i32 %and866, 0, !dbg !2050
  br i1 %tobool867, label %if.end869, label %for.inc, !dbg !2050

if.end869:                                        ; preds = %cont865
  switch i32 %conv849, label %for.inc [
    i32 32, label %sw.bb871
    i32 13, label %sw.bb875
    i32 10, label %sw.bb882
    i32 35, label %cont889
    i32 0, label %return
  ], !dbg !2052

sw.bb871:                                         ; preds = %if.end869
  store i8* %p.01411, i8** %uri_end, align 4, !dbg !2053, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !2056, i64 0, metadata !1583), !dbg !2057
  br label %for.inc, !dbg !2058

sw.bb875:                                         ; preds = %if.end869
  store i8* %p.01411, i8** %uri_end, align 4, !dbg !2059, !tbaa !1776
  %111 = load i32* %4, align 4, !dbg !2061
  %112 = and i32 %111, -65536, !dbg !2061
  %113 = or i32 %112, 9, !dbg !2061
  store i32 %113, i32* %4, align 4, !dbg !2061
  tail call void @llvm.dbg.value(metadata !1955, i64 0, metadata !1583), !dbg !2062
  br label %for.inc, !dbg !2063

sw.bb882:                                         ; preds = %if.end869
  store i8* %p.01411, i8** %uri_end, align 4, !dbg !2064, !tbaa !1776
  %114 = load i32* %4, align 4, !dbg !2066
  %115 = and i32 %114, -65536, !dbg !2066
  %116 = or i32 %115, 9, !dbg !2066
  store i32 %116, i32* %4, align 4, !dbg !2066
  br label %done, !dbg !2067

cont889:                                          ; preds = %if.end869
  %117 = load i32* %6, align 4, !dbg !2068
  %118 = or i32 %117, 536870912, !dbg !2068
  store i32 %118, i32* %6, align 4, !dbg !2068
  br label %for.inc, !dbg !2070

sw.bb893:                                         ; preds = %for.body
  %conv894 = zext i8 %9 to i32, !dbg !2071
  switch i32 %conv894, label %cont912 [
    i32 32, label %for.inc
    i32 13, label %cont897
    i32 10, label %cont903
    i32 72, label %sw.bb905
  ], !dbg !2071

cont897:                                          ; preds = %sw.bb893
  %119 = load i32* %4, align 4, !dbg !2073
  %120 = and i32 %119, -65536, !dbg !2073
  %121 = or i32 %120, 9, !dbg !2073
  store i32 %121, i32* %4, align 4, !dbg !2073
  tail call void @llvm.dbg.value(metadata !1955, i64 0, metadata !1583), !dbg !2076
  br label %for.inc, !dbg !2077

cont903:                                          ; preds = %sw.bb893
  %122 = load i32* %4, align 4, !dbg !2078
  %123 = and i32 %122, -65536, !dbg !2078
  %124 = or i32 %123, 9, !dbg !2078
  store i32 %124, i32* %4, align 4, !dbg !2078
  br label %done, !dbg !2080

sw.bb905:                                         ; preds = %sw.bb893
  store i8* %p.01411, i8** %data, align 4, !dbg !2081, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1961, i64 0, metadata !1583), !dbg !2083
  br label %for.inc, !dbg !2084

cont912:                                          ; preds = %sw.bb893
  %125 = load i32* %8, align 4, !dbg !2085
  %126 = or i32 %125, 1, !dbg !2085
  store i32 %126, i32* %8, align 4, !dbg !2085
  tail call void @llvm.dbg.value(metadata !1980, i64 0, metadata !1583), !dbg !2087
  br label %for.inc, !dbg !2088

sw.bb917:                                         ; preds = %for.body
  %cond1128 = icmp eq i8 %9, 84, !dbg !2089
  br i1 %cond1128, label %for.inc, label %return, !dbg !2089

sw.bb924:                                         ; preds = %for.body
  %cond1127 = icmp eq i8 %9, 84, !dbg !2091
  br i1 %cond1127, label %for.inc, label %return, !dbg !2091

sw.bb931:                                         ; preds = %for.body
  %cond1126 = icmp eq i8 %9, 80, !dbg !2093
  br i1 %cond1126, label %for.inc, label %return, !dbg !2093

sw.bb938:                                         ; preds = %for.body
  %cond1125 = icmp eq i8 %9, 47, !dbg !2095
  br i1 %cond1125, label %for.inc, label %return, !dbg !2095

sw.bb945:                                         ; preds = %for.body
  %.off1377 = add i8 %9, -49, !dbg !2097
  %127 = icmp ugt i8 %.off1377, 8, !dbg !2097
  br i1 %127, label %return, label %if.end954, !dbg !2097

if.end954:                                        ; preds = %sw.bb945
  %conv946 = zext i8 %9 to i32, !dbg !2097
  %128 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv946, i32 48), !dbg !2099
  %129 = extractvalue { i32, i1 } %128, 0, !dbg !2099
  %130 = extractvalue { i32, i1 } %128, 1, !dbg !2099
  br i1 %130, label %ioc_bb956, label %cont957, !dbg !2099

ioc_bb956:                                        ; preds = %if.end954
  %131 = zext i8 %9 to i64, !dbg !2099
  tail call void @__ioc_report_sub_overflow(i32 740, i32 31, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %131, i64 48, i8 13) nounwind, !dbg !2099
  br label %cont957, !dbg !2099

cont957:                                          ; preds = %if.end954, %ioc_bb956
  %132 = icmp sgt i32 %129, -1, !dbg !2099
  br i1 %132, label %cont960, label %ioc_bb959, !dbg !2099

ioc_bb959:                                        ; preds = %cont957
  %133 = sext i32 %129 to i64, !dbg !2099
  tail call void @__ioc_report_conversion(i32 740, i32 27, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %133, i8 1) nounwind, !dbg !2099
  br label %cont960, !dbg !2099

cont960:                                          ; preds = %cont957, %ioc_bb959
  %134 = shl i32 %129, 16, !dbg !2099
  %135 = load i32* %4, align 4, !dbg !2099
  %136 = and i32 %135, 65535, !dbg !2099
  %137 = or i32 %136, %134, !dbg !2099
  store i32 %137, i32* %4, align 4, !dbg !2099
  tail call void @llvm.dbg.value(metadata !2100, i64 0, metadata !1583), !dbg !2101
  br label %for.inc, !dbg !2102

sw.bb964:                                         ; preds = %for.body
  %conv965 = zext i8 %9 to i32, !dbg !2103
  %cmp966 = icmp eq i8 %9, 46, !dbg !2103
  br i1 %cmp966, label %for.inc, label %if.end971, !dbg !2103

if.end971:                                        ; preds = %sw.bb964
  %.off1376 = add i8 %9, -48, !dbg !2105
  %138 = icmp ugt i8 %.off1376, 9, !dbg !2105
  br i1 %138, label %return, label %if.end980, !dbg !2105

if.end980:                                        ; preds = %if.end971
  %139 = load i32* %4, align 4, !dbg !2106
  %140 = lshr i32 %139, 16, !dbg !2106
  %141 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %140, i32 10), !dbg !2106
  %142 = extractvalue { i32, i1 } %141, 0, !dbg !2106
  %143 = extractvalue { i32, i1 } %141, 1, !dbg !2106
  br i1 %143, label %ioc_bb984, label %cont985, !dbg !2106

ioc_bb984:                                        ; preds = %if.end980
  %144 = zext i32 %140 to i64, !dbg !2106
  tail call void @__ioc_report_mul_overflow(i32 754, i32 46, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %144, i64 10, i8 13) nounwind, !dbg !2106
  br label %cont985, !dbg !2106

cont985:                                          ; preds = %if.end980, %ioc_bb984
  %145 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %142, i32 %conv965), !dbg !2106
  %146 = extractvalue { i32, i1 } %145, 0, !dbg !2106
  %147 = extractvalue { i32, i1 } %145, 1, !dbg !2106
  br i1 %147, label %ioc_bb987, label %cont988, !dbg !2106

ioc_bb987:                                        ; preds = %cont985
  %148 = zext i8 %9 to i64, !dbg !2106
  %149 = zext i32 %142 to i64, !dbg !2106
  tail call void @__ioc_report_add_overflow(i32 754, i32 51, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %149, i64 %148, i8 13) nounwind, !dbg !2106
  br label %cont988, !dbg !2106

cont988:                                          ; preds = %cont985, %ioc_bb987
  %150 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %146, i32 48), !dbg !2106
  %151 = extractvalue { i32, i1 } %150, 0, !dbg !2106
  %152 = extractvalue { i32, i1 } %150, 1, !dbg !2106
  br i1 %152, label %ioc_bb989, label %cont990, !dbg !2106

ioc_bb989:                                        ; preds = %cont988
  %153 = sext i32 %146 to i64, !dbg !2106
  tail call void @__ioc_report_sub_overflow(i32 754, i32 56, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %153, i64 48, i8 13) nounwind, !dbg !2106
  br label %cont990, !dbg !2106

cont990:                                          ; preds = %cont988, %ioc_bb989
  %154 = icmp sgt i32 %151, -1, !dbg !2106
  br i1 %154, label %cont993, label %ioc_bb992, !dbg !2106

ioc_bb992:                                        ; preds = %cont990
  %155 = sext i32 %151 to i64, !dbg !2106
  tail call void @__ioc_report_conversion(i32 754, i32 27, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %155, i8 1) nounwind, !dbg !2106
  br label %cont993, !dbg !2106

cont993:                                          ; preds = %cont990, %ioc_bb992
  %156 = shl i32 %151, 16, !dbg !2106
  %157 = load i32* %4, align 4, !dbg !2106
  %158 = and i32 %157, 65535, !dbg !2106
  %159 = or i32 %158, %156, !dbg !2106
  store i32 %159, i32* %4, align 4, !dbg !2106
  br label %for.inc, !dbg !2107

sw.bb996:                                         ; preds = %for.body
  %.off1375 = add i8 %9, -48, !dbg !2108
  %160 = icmp ugt i8 %.off1375, 9, !dbg !2108
  br i1 %160, label %return, label %if.end1005, !dbg !2108

if.end1005:                                       ; preds = %sw.bb996
  %conv997 = zext i8 %9 to i32, !dbg !2108
  %161 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv997, i32 48), !dbg !2110
  %162 = extractvalue { i32, i1 } %161, 0, !dbg !2110
  %163 = extractvalue { i32, i1 } %161, 1, !dbg !2110
  br i1 %163, label %ioc_bb1007, label %cont1008, !dbg !2110

ioc_bb1007:                                       ; preds = %if.end1005
  %164 = zext i8 %9 to i64, !dbg !2110
  tail call void @__ioc_report_sub_overflow(i32 763, i32 31, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %164, i64 48, i8 13) nounwind, !dbg !2110
  br label %cont1008, !dbg !2110

cont1008:                                         ; preds = %if.end1005, %ioc_bb1007
  %165 = icmp sgt i32 %162, -1, !dbg !2110
  br i1 %165, label %cont1011, label %ioc_bb1010, !dbg !2110

ioc_bb1010:                                       ; preds = %cont1008
  %166 = sext i32 %162 to i64, !dbg !2110
  tail call void @__ioc_report_conversion(i32 763, i32 27, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %166, i8 1) nounwind, !dbg !2110
  br label %cont1011, !dbg !2110

cont1011:                                         ; preds = %cont1008, %ioc_bb1010
  %bf.value1012 = and i32 %162, 65535, !dbg !2110
  %167 = load i32* %4, align 4, !dbg !2110
  %168 = and i32 %167, -65536, !dbg !2110
  %169 = or i32 %168, %bf.value1012, !dbg !2110
  store i32 %169, i32* %4, align 4, !dbg !2110
  tail call void @llvm.dbg.value(metadata !2111, i64 0, metadata !1583), !dbg !2112
  br label %for.inc, !dbg !2113

sw.bb1016:                                        ; preds = %for.body
  %conv1017 = zext i8 %9 to i32, !dbg !2114
  switch i8 %9, label %if.end1039 [
    i8 13, label %for.inc
    i8 10, label %done
    i8 32, label %cont1038
  ], !dbg !2114

cont1038:                                         ; preds = %sw.bb1016
  tail call void @llvm.dbg.value(metadata !2116, i64 0, metadata !1583), !dbg !2117
  br label %for.inc, !dbg !2119

if.end1039:                                       ; preds = %sw.bb1016
  %.off1374 = add i8 %9, -48, !dbg !2120
  %170 = icmp ugt i8 %.off1374, 9, !dbg !2120
  br i1 %170, label %return, label %if.end1048, !dbg !2120

if.end1048:                                       ; preds = %if.end1039
  %171 = load i32* %4, align 4, !dbg !2121
  %bf.clear1050 = and i32 %171, 65535, !dbg !2121
  %172 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %bf.clear1050, i32 10), !dbg !2121
  %173 = extractvalue { i32, i1 } %172, 0, !dbg !2121
  %174 = extractvalue { i32, i1 } %172, 1, !dbg !2121
  br i1 %174, label %ioc_bb1054, label %cont1055, !dbg !2121

ioc_bb1054:                                       ; preds = %if.end1048
  %175 = zext i32 %bf.clear1050 to i64, !dbg !2121
  tail call void @__ioc_report_mul_overflow(i32 784, i32 46, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %175, i64 10, i8 13) nounwind, !dbg !2121
  br label %cont1055, !dbg !2121

cont1055:                                         ; preds = %if.end1048, %ioc_bb1054
  %176 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %173, i32 %conv1017), !dbg !2121
  %177 = extractvalue { i32, i1 } %176, 0, !dbg !2121
  %178 = extractvalue { i32, i1 } %176, 1, !dbg !2121
  br i1 %178, label %ioc_bb1057, label %cont1058, !dbg !2121

ioc_bb1057:                                       ; preds = %cont1055
  %179 = zext i8 %9 to i64, !dbg !2121
  %180 = zext i32 %173 to i64, !dbg !2121
  tail call void @__ioc_report_add_overflow(i32 784, i32 51, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %180, i64 %179, i8 13) nounwind, !dbg !2121
  br label %cont1058, !dbg !2121

cont1058:                                         ; preds = %cont1055, %ioc_bb1057
  %181 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %177, i32 48), !dbg !2121
  %182 = extractvalue { i32, i1 } %181, 0, !dbg !2121
  %183 = extractvalue { i32, i1 } %181, 1, !dbg !2121
  br i1 %183, label %ioc_bb1059, label %cont1060, !dbg !2121

ioc_bb1059:                                       ; preds = %cont1058
  %184 = sext i32 %177 to i64, !dbg !2121
  tail call void @__ioc_report_sub_overflow(i32 784, i32 56, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %184, i64 48, i8 13) nounwind, !dbg !2121
  br label %cont1060, !dbg !2121

cont1060:                                         ; preds = %cont1058, %ioc_bb1059
  %185 = icmp sgt i32 %182, -1, !dbg !2121
  br i1 %185, label %cont1063, label %ioc_bb1062, !dbg !2121

ioc_bb1062:                                       ; preds = %cont1060
  %186 = sext i32 %182 to i64, !dbg !2121
  tail call void @__ioc_report_conversion(i32 784, i32 27, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %186, i8 1) nounwind, !dbg !2121
  br label %cont1063, !dbg !2121

cont1063:                                         ; preds = %cont1060, %ioc_bb1062
  %bf.value1064 = and i32 %182, 65535, !dbg !2121
  %187 = load i32* %4, align 4, !dbg !2121
  %188 = and i32 %187, -65536, !dbg !2121
  %189 = or i32 %188, %bf.value1064, !dbg !2121
  store i32 %189, i32* %4, align 4, !dbg !2121
  br label %for.inc, !dbg !2122

sw.bb1066:                                        ; preds = %for.body
  %conv1067 = zext i8 %9 to i32, !dbg !2123
  switch i32 %conv1067, label %return [
    i32 32, label %for.inc
    i32 13, label %cont1070
    i32 10, label %done
  ], !dbg !2123

cont1070:                                         ; preds = %sw.bb1066
  tail call void @llvm.dbg.value(metadata !1955, i64 0, metadata !1583), !dbg !2125
  br label %for.inc, !dbg !2128

sw.bb1074:                                        ; preds = %for.body
  %add.ptr1075 = getelementptr inbounds i8* %p.01411, i32 -1, !dbg !2129
  %request_end = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 73, !dbg !2129
  store i8* %add.ptr1075, i8** %request_end, align 4, !dbg !2129, !tbaa !1776
  %cond = icmp eq i8 %9, 10, !dbg !2131
  br i1 %cond, label %done, label %return, !dbg !2131

for.inc:                                          ; preds = %sw.bb261, %cont281, %land.lhs.true199, %land.lhs.true225, %if.end869, %cont865, %if.end777, %cont773, %if.end701, %cont696, %sw.bb576, %if.end558, %sw.bb542, %sw.bb532, %land.lhs.true444, %land.lhs.true426, %sw.bb409, %land.lhs.true386, %sw.bb369, %land.lhs.true346, %sw.bb329, %cont314, %land.lhs.true251, %if.end234, %cont173, %cont89, %sw.bb29, %if.then27, %if.end, %sw.bb, %sw.bb, %sw.bb1016, %sw.bb964, %sw.bb938, %sw.bb931, %sw.bb924, %sw.bb917, %sw.bb640, %if.end604, %sw.bb595, %sw.bb525, %sw.bb518, %sw.bb495, %if.end456, %cont451, %cont406, %cont366, %cont258, %cont326, %cont292, %cont178, %cont157, %cont136, %cont115, %cont94, %cont68, %cont48, %if.then474, %if.then489, %sw.bb513, %cont960, %cont993, %cont1011, %cont1038, %cont1063, %for.body, %if.end492, %sw.bb585, %sw.bb581, %if.end620, %if.end620, %if.end620, %if.end620, %if.end620, %if.end620, %if.end620, %if.end620, %if.end620, %if.end620, %if.end620, %if.end620, %if.end620, %if.end620, %if.end620, %if.end620, %cont624, %sw.bb655, %sw.bb651, %sw.bb678, %cont671, %sw.bb667, %cont749, %cont743, %sw.bb737, %cont733, %cont727, %cont721, %sw.bb707, %sw.bb703, %cont820, %cont814, %sw.bb807, %cont803, %sw.bb789, %sw.bb785, %sw.bb782, %sw.bb779, %cont843, %sw.bb836, %cont828, %sw.bb824, %cont889, %sw.bb875, %sw.bb871, %cont912, %sw.bb905, %cont897, %sw.bb893, %cont1070, %sw.bb1066
  %state.2 = phi i32 [ %state.01413, %for.body ], [ 26, %cont1070 ], [ 25, %sw.bb1066 ], [ 25, %cont1038 ], [ 24, %cont1063 ], [ 24, %cont1011 ], [ 22, %cont993 ], [ 22, %cont960 ], [ 15, %cont912 ], [ 17, %sw.bb905 ], [ 26, %cont897 ], [ 16, %sw.bb893 ], [ 15, %cont889 ], [ 26, %sw.bb875 ], [ 16, %sw.bb871 ], [ 13, %cont843 ], [ 17, %sw.bb836 ], [ 26, %cont828 ], [ 14, %sw.bb824 ], [ 13, %cont820 ], [ 15, %cont814 ], [ 15, %sw.bb807 ], [ 15, %cont803 ], [ 26, %sw.bb789 ], [ 14, %sw.bb785 ], [ 13, %sw.bb782 ], [ 12, %sw.bb779 ], [ 12, %cont749 ], [ 15, %cont743 ], [ 15, %sw.bb737 ], [ 15, %cont733 ], [ 15, %cont727 ], [ 15, %cont721 ], [ 26, %sw.bb707 ], [ 14, %sw.bb703 ], [ 17, %sw.bb678 ], [ 26, %cont671 ], [ 11, %sw.bb667 ], [ 11, %sw.bb655 ], [ 12, %sw.bb651 ], [ 8, %cont624 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 9, %if.end620 ], [ 11, %sw.bb585 ], [ 12, %sw.bb581 ], [ 4, %sw.bb513 ], [ 12, %if.then474 ], [ 3, %if.then489 ], [ 2, %if.end492 ], [ 2, %cont48 ], [ 2, %cont68 ], [ 2, %cont94 ], [ 2, %cont115 ], [ 2, %cont136 ], [ 2, %cont157 ], [ 2, %cont178 ], [ 2, %cont292 ], [ 2, %cont326 ], [ 2, %cont258 ], [ 2, %cont366 ], [ 2, %cont406 ], [ 2, %cont451 ], [ 1, %if.end456 ], [ 3, %sw.bb495 ], [ 5, %sw.bb518 ], [ 6, %sw.bb525 ], [ 9, %sw.bb595 ], [ 9, %if.end604 ], [ 10, %sw.bb640 ], [ 18, %sw.bb917 ], [ 19, %sw.bb924 ], [ 20, %sw.bb931 ], [ 21, %sw.bb938 ], [ 23, %sw.bb964 ], [ 26, %sw.bb1016 ], [ 0, %sw.bb ], [ 0, %sw.bb ], [ 1, %if.end ], [ 2, %if.then27 ], [ 2, %sw.bb29 ], [ 2, %cont89 ], [ 2, %cont173 ], [ 2, %if.end234 ], [ 2, %land.lhs.true251 ], [ 2, %cont314 ], [ 2, %sw.bb329 ], [ 2, %land.lhs.true346 ], [ 2, %sw.bb369 ], [ 2, %land.lhs.true386 ], [ 2, %sw.bb409 ], [ 2, %land.lhs.true426 ], [ 2, %land.lhs.true444 ], [ 9, %sw.bb532 ], [ 7, %sw.bb542 ], [ 7, %if.end558 ], [ 10, %sw.bb576 ], [ 13, %cont696 ], [ 13, %if.end701 ], [ 13, %cont773 ], [ 13, %if.end777 ], [ 15, %cont865 ], [ 15, %if.end869 ], [ 2, %land.lhs.true225 ], [ 2, %land.lhs.true199 ], [ 2, %cont281 ], [ 2, %sw.bb261 ]
  %incdec.ptr = getelementptr inbounds i8* %p.01411, i32 1, !dbg !1774
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1581), !dbg !1774
  %190 = load i8** %last, align 4, !dbg !1774, !tbaa !1776
  %cmp = icmp ult i8* %incdec.ptr, %190, !dbg !1774
  br i1 %cmp, label %for.body, label %for.end, !dbg !1774

for.end:                                          ; preds = %for.inc, %entry
  %state.0.lcssa = phi i32 [ %0, %entry ], [ %state.2, %for.inc ]
  %p.0.lcssa = phi i8* [ %1, %entry ], [ %incdec.ptr, %for.inc ]
  store i8* %p.0.lcssa, i8** %pos, align 4, !dbg !2132, !tbaa !1776
  store i32 %state.0.lcssa, i32* %state1, align 4, !dbg !2133, !tbaa !1771
  br label %return, !dbg !2134

done:                                             ; preds = %sw.bb1016, %sw.bb1066, %sw.bb1074, %cont903, %sw.bb882, %cont834, %sw.bb796, %sw.bb714, %cont676
  %add.ptr1084 = getelementptr inbounds i8* %p.01411, i32 1, !dbg !2135
  store i8* %add.ptr1084, i8** %pos, align 4, !dbg !2135, !tbaa !1776
  %request_end1086 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 73, !dbg !2136
  %191 = load i8** %request_end1086, align 4, !dbg !2136, !tbaa !1776
  %cmp1087 = icmp eq i8* %191, null, !dbg !2136
  br i1 %cmp1087, label %if.then1089, label %if.end1091, !dbg !2136

if.then1089:                                      ; preds = %done
  store i8* %p.01411, i8** %request_end1086, align 4, !dbg !2137, !tbaa !1776
  br label %if.end1091, !dbg !2139

if.end1091:                                       ; preds = %if.then1089, %done
  %192 = load i32* %4, align 4, !dbg !2140
  %193 = lshr i32 %192, 16, !dbg !2140
  %194 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %193, i32 1000), !dbg !2140
  %195 = extractvalue { i32, i1 } %194, 0, !dbg !2140
  %196 = extractvalue { i32, i1 } %194, 1, !dbg !2140
  br i1 %196, label %ioc_bb1097, label %cont1098, !dbg !2140

ioc_bb1097:                                       ; preds = %if.end1091
  %197 = zext i32 %193 to i64, !dbg !2140
  tail call void @__ioc_report_mul_overflow(i32 825, i32 42, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %197, i64 1000, i8 13) nounwind, !dbg !2140
  %.pre1435 = load i32* %4, align 4, !dbg !2140
  br label %cont1098, !dbg !2140

cont1098:                                         ; preds = %if.end1091, %ioc_bb1097
  %198 = phi i32 [ %192, %if.end1091 ], [ %.pre1435, %ioc_bb1097 ]
  %bf.clear1100 = and i32 %198, 65535, !dbg !2140
  %199 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %195, i32 %bf.clear1100), !dbg !2140
  %200 = extractvalue { i32, i1 } %199, 0, !dbg !2140
  %201 = extractvalue { i32, i1 } %199, 1, !dbg !2140
  br i1 %201, label %ioc_bb1104, label %cont1105, !dbg !2140

ioc_bb1104:                                       ; preds = %cont1098
  %202 = zext i32 %bf.clear1100 to i64, !dbg !2140
  %203 = zext i32 %195 to i64, !dbg !2140
  tail call void @__ioc_report_add_overflow(i32 825, i32 49, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %203, i64 %202, i8 13) nounwind, !dbg !2140
  br label %cont1105, !dbg !2140

cont1105:                                         ; preds = %cont1098, %ioc_bb1104
  %204 = icmp sgt i32 %200, -1, !dbg !2140
  br i1 %204, label %cont1108, label %ioc_bb1107, !dbg !2140

ioc_bb1107:                                       ; preds = %cont1105
  %205 = sext i32 %200 to i64, !dbg !2140
  tail call void @__ioc_report_conversion(i32 825, i32 23, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %205, i8 1) nounwind, !dbg !2140
  br label %cont1108, !dbg !2140

cont1108:                                         ; preds = %ioc_bb1107, %cont1105
  %http_version = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 20, !dbg !2140
  store i32 %200, i32* %http_version, align 4, !dbg !2140, !tbaa !1771
  store i32 0, i32* %state1, align 4, !dbg !2141, !tbaa !1771
  %cmp1115 = icmp eq i32 %200, 9, !dbg !2142
  br i1 %cmp1115, label %cont1120, label %if.end1124, !dbg !2142

cont1120:                                         ; preds = %cont1108
  %206 = load i32* %method, align 4, !dbg !2142, !tbaa !1771
  %cmp1121 = icmp eq i32 %206, 2, !dbg !2142
  br i1 %cmp1121, label %if.end1124, label %return, !dbg !2142

if.end1124:                                       ; preds = %cont1120, %cont1108
  br label %return, !dbg !2143

return:                                           ; preds = %sw.bb1066, %if.end1039, %sw.bb996, %if.end971, %sw.bb945, %sw.bb938, %sw.bb931, %sw.bb924, %sw.bb917, %if.end869, %if.end777, %if.end701, %sw.bb667, %if.end649, %if.end620, %sw.bb576, %sw.bb525, %sw.bb518, %if.end511, %if.end492, %if.end456, %if.end, %cont1120, %sw.bb1074, %if.end1124, %for.end
  %retval.0 = phi i32 [ 0, %if.end1124 ], [ -2, %for.end ], [ 11, %sw.bb1074 ], [ 12, %cont1120 ], [ 11, %sw.bb1066 ], [ 11, %if.end1039 ], [ 11, %sw.bb996 ], [ 11, %if.end971 ], [ 11, %sw.bb945 ], [ 11, %sw.bb938 ], [ 11, %sw.bb931 ], [ 11, %sw.bb924 ], [ 11, %sw.bb917 ], [ 11, %if.end869 ], [ 11, %if.end777 ], [ 11, %if.end701 ], [ 11, %sw.bb667 ], [ 11, %if.end649 ], [ 11, %if.end620 ], [ 11, %sw.bb576 ], [ 11, %sw.bb525 ], [ 11, %sw.bb518 ], [ 11, %if.end511 ], [ 11, %if.end492 ], [ 10, %if.end456 ], [ 10, %if.end ]
  ret i32 %retval.0, !dbg !2144
}

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define i32 @ngx_http_parse_header_line(%struct.ngx_http_request_s* %r, %struct.ngx_buf_s* nocapture %b, i32 %allow_underscores) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1618), !dbg !2145
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_buf_s* %b}, i64 0, metadata !1619), !dbg !2145
  tail call void @llvm.dbg.value(metadata !{i32 %allow_underscores}, i64 0, metadata !1620), !dbg !2145
  %state1 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 60, !dbg !2146
  %0 = load i32* %state1, align 4, !dbg !2146, !tbaa !1771
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !1627), !dbg !2146
  %header_hash = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 61, !dbg !2147
  %1 = load i32* %header_hash, align 4, !dbg !2147, !tbaa !1771
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !1625), !dbg !2147
  %lowcase_index = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 62, !dbg !2148
  %2 = load i32* %lowcase_index, align 4, !dbg !2148, !tbaa !1771
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !1626), !dbg !2148
  %pos = getelementptr inbounds %struct.ngx_buf_s* %b, i32 0, i32 0, !dbg !2149
  %3 = load i8** %pos, align 4, !dbg !2149, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !{i8* %3}, i64 0, metadata !1624), !dbg !2149
  %last = getelementptr inbounds %struct.ngx_buf_s* %b, i32 0, i32 1, !dbg !2149
  %4 = load i8** %last, align 4, !dbg !2149, !tbaa !1776
  %cmp342 = icmp ult i8* %3, %4, !dbg !2149
  br i1 %cmp342, label %for.body.lr.ph, label %for.end, !dbg !2149

for.body.lr.ph:                                   ; preds = %entry
  %header_name_start = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 64, !dbg !2151
  %5 = getelementptr %struct.ngx_http_request_s* %r, i32 0, i32 53, !dbg !2155
  %6 = bitcast i8* %5 to i32*, !dbg !2155
  %arrayidx18 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 63, i32 0, !dbg !2156
  %header_end = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 67, !dbg !2160
  %tobool54 = icmp eq i32 %allow_underscores, 0, !dbg !2162
  %header_name_end = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 65, !dbg !2165
  %header_start = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 66, !dbg !2167
  %upstream = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 9, !dbg !2169
  br label %for.body, !dbg !2149

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %state.0346 = phi i32 [ %0, %for.body.lr.ph ], [ %state.1, %for.inc ]
  %i.0345 = phi i32 [ %2, %for.body.lr.ph ], [ %i.1, %for.inc ]
  %hash.0344 = phi i32 [ %1, %for.body.lr.ph ], [ %hash.1, %for.inc ]
  %p.0343 = phi i8* [ %3, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %7 = load i8* %p.0343, align 1, !dbg !2170, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %7}, i64 0, metadata !1623), !dbg !2170
  switch i32 %state.0346, label %for.inc [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
    i32 2, label %sw.bb132
    i32 3, label %sw.bb148
    i32 4, label %sw.bb162
    i32 5, label %sw.bb173
    i32 6, label %sw.bb180
    i32 7, label %sw.bb185
  ], !dbg !2171

sw.bb:                                            ; preds = %for.body
  store i8* %p.0343, i8** %header_name_start, align 4, !dbg !2151, !tbaa !1776
  %8 = load i32* %6, align 4, !dbg !2155
  %9 = and i32 %8, -3, !dbg !2155
  store i32 %9, i32* %6, align 4, !dbg !2155
  %conv = zext i8 %7 to i32, !dbg !2172
  switch i32 %conv, label %cont8 [
    i32 13, label %sw.bb2
    i32 10, label %sw.bb5
  ], !dbg !2172

sw.bb2:                                           ; preds = %sw.bb
  store i8* %p.0343, i8** %header_end, align 4, !dbg !2160, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !2173, i64 0, metadata !1627), !dbg !2174
  br label %for.inc, !dbg !2175

sw.bb5:                                           ; preds = %sw.bb
  store i8* %p.0343, i8** %header_end, align 4, !dbg !2176, !tbaa !1776
  br label %header_done, !dbg !2178

cont8:                                            ; preds = %sw.bb
  tail call void @llvm.dbg.value(metadata !2179, i64 0, metadata !1627), !dbg !2180
  %arrayidx = getelementptr inbounds [256 x i8]* @ngx_http_parse_header_line.lowcase, i32 0, i32 %conv, !dbg !2181
  %10 = load i8* %arrayidx, align 1, !dbg !2181, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %10}, i64 0, metadata !1621), !dbg !2181
  %tobool = icmp eq i8 %10, 0, !dbg !2182
  br i1 %tobool, label %if.end, label %cont14, !dbg !2182

cont14:                                           ; preds = %cont8
  %conv15 = zext i8 %10 to i32, !dbg !2183
  tail call void @llvm.dbg.value(metadata !{i32 %conv15}, i64 0, metadata !1625), !dbg !2183
  store i8 %10, i8* %arrayidx18, align 1, !dbg !2156, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !2179, i64 0, metadata !1626), !dbg !2184
  br label %for.inc, !dbg !2185

if.end:                                           ; preds = %cont8
  %cmp22 = icmp eq i8 %7, 0, !dbg !2186
  br i1 %cmp22, label %return, label %cont27, !dbg !2186

cont27:                                           ; preds = %if.end
  %11 = or i32 %8, 2, !dbg !2187
  store i32 %11, i32* %6, align 4, !dbg !2187
  br label %for.inc, !dbg !2188

sw.bb29:                                          ; preds = %for.body
  %idxprom30 = zext i8 %7 to i32, !dbg !2189
  %arrayidx31 = getelementptr inbounds [256 x i8]* @ngx_http_parse_header_line.lowcase, i32 0, i32 %idxprom30, !dbg !2189
  %12 = load i8* %arrayidx31, align 1, !dbg !2189, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %12}, i64 0, metadata !1621), !dbg !2189
  %tobool32 = icmp eq i8 %12, 0, !dbg !2190
  br i1 %tobool32, label %if.end49, label %cont35, !dbg !2190

cont35:                                           ; preds = %sw.bb29
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %hash.0344, i32 31), !dbg !2191
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !2191
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !2191
  br i1 %15, label %ioc_bb36, label %cont37, !dbg !2191

ioc_bb36:                                         ; preds = %cont35
  %16 = zext i32 %hash.0344 to i64, !dbg !2191
  tail call void @__ioc_report_mul_overflow(i32 890, i32 38, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %16, i64 31, i8 5) nounwind, !dbg !2191
  br label %cont37, !dbg !2191

cont37:                                           ; preds = %cont35, %ioc_bb36
  %conv38 = zext i8 %12 to i32, !dbg !2191
  %17 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %14, i32 %conv38), !dbg !2191
  %18 = extractvalue { i32, i1 } %17, 0, !dbg !2191
  %19 = extractvalue { i32, i1 } %17, 1, !dbg !2191
  br i1 %19, label %ioc_bb39, label %cont40, !dbg !2191

ioc_bb39:                                         ; preds = %cont37
  %20 = zext i8 %12 to i64, !dbg !2191
  %21 = zext i32 %14 to i64, !dbg !2191
  tail call void @__ioc_report_add_overflow(i32 890, i32 43, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %21, i64 %20, i8 5) nounwind, !dbg !2191
  br label %cont40, !dbg !2191

cont40:                                           ; preds = %cont37, %ioc_bb39
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !1625), !dbg !2191
  %22 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0345, i32 1), !dbg !2193
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !2193
  %24 = extractvalue { i32, i1 } %22, 1, !dbg !2193
  br i1 %24, label %ioc_bb41, label %cont42, !dbg !2193

ioc_bb41:                                         ; preds = %cont40
  %25 = zext i32 %i.0345 to i64, !dbg !2193
  tail call void @__ioc_report_add_overflow(i32 891, i32 32, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %25, i64 1, i8 5) nounwind, !dbg !2193
  br label %cont42, !dbg !2193

cont42:                                           ; preds = %cont40, %ioc_bb41
  tail call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !1626), !dbg !2193
  %arrayidx44 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 63, i32 %i.0345, !dbg !2193
  store i8 %12, i8* %arrayidx44, align 1, !dbg !2193, !tbaa !1772
  %and = and i32 %23, 31, !dbg !2194
  tail call void @llvm.dbg.value(metadata !{i32 %and}, i64 0, metadata !1626), !dbg !2194
  br label %for.inc, !dbg !2195

if.end49:                                         ; preds = %sw.bb29
  switch i8 %7, label %cont130 [
    i8 95, label %if.then53
    i8 58, label %if.then81
    i8 13, label %if.then90
    i8 10, label %if.then101
    i8 47, label %land.lhs.true
    i8 0, label %return
  ], !dbg !2196

if.then53:                                        ; preds = %if.end49
  br i1 %tobool54, label %cont74, label %cont57, !dbg !2162

cont57:                                           ; preds = %if.then53
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %hash.0344, i32 31), !dbg !2197
  %27 = extractvalue { i32, i1 } %26, 0, !dbg !2197
  %28 = extractvalue { i32, i1 } %26, 1, !dbg !2197
  br i1 %28, label %ioc_bb58, label %cont59, !dbg !2197

ioc_bb58:                                         ; preds = %cont57
  %29 = zext i32 %hash.0344 to i64, !dbg !2197
  tail call void @__ioc_report_mul_overflow(i32 897, i32 40, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %29, i64 31, i8 5) nounwind, !dbg !2197
  br label %cont59, !dbg !2197

cont59:                                           ; preds = %cont57, %ioc_bb58
  %30 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %27, i32 %idxprom30), !dbg !2197
  %31 = extractvalue { i32, i1 } %30, 0, !dbg !2197
  %32 = extractvalue { i32, i1 } %30, 1, !dbg !2197
  br i1 %32, label %ioc_bb61, label %cont62, !dbg !2197

ioc_bb61:                                         ; preds = %cont59
  %33 = zext i32 %27 to i64, !dbg !2197
  tail call void @__ioc_report_add_overflow(i32 897, i32 45, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %33, i64 95, i8 5) nounwind, !dbg !2197
  br label %cont62, !dbg !2197

cont62:                                           ; preds = %cont59, %ioc_bb61
  tail call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !1625), !dbg !2197
  %34 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0345, i32 1), !dbg !2199
  %35 = extractvalue { i32, i1 } %34, 0, !dbg !2199
  %36 = extractvalue { i32, i1 } %34, 1, !dbg !2199
  br i1 %36, label %ioc_bb63, label %cont64, !dbg !2199

ioc_bb63:                                         ; preds = %cont62
  %37 = zext i32 %i.0345 to i64, !dbg !2199
  tail call void @__ioc_report_add_overflow(i32 898, i32 34, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %37, i64 1, i8 5) nounwind, !dbg !2199
  br label %cont64, !dbg !2199

cont64:                                           ; preds = %cont62, %ioc_bb63
  tail call void @llvm.dbg.value(metadata !{i32 %35}, i64 0, metadata !1626), !dbg !2199
  %arrayidx66 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 63, i32 %i.0345, !dbg !2199
  store i8 95, i8* %arrayidx66, align 1, !dbg !2199, !tbaa !1772
  %and72 = and i32 %35, 31, !dbg !2200
  tail call void @llvm.dbg.value(metadata !{i32 %and72}, i64 0, metadata !1626), !dbg !2200
  br label %for.inc, !dbg !2201

cont74:                                           ; preds = %if.then53
  %38 = load i32* %6, align 4, !dbg !2202
  %39 = or i32 %38, 2, !dbg !2202
  store i32 %39, i32* %6, align 4, !dbg !2202
  br label %for.inc

if.then81:                                        ; preds = %if.end49
  store i8* %p.0343, i8** %header_name_end, align 4, !dbg !2165, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !2204, i64 0, metadata !1627), !dbg !2205
  br label %for.inc, !dbg !2206

if.then90:                                        ; preds = %if.end49
  store i8* %p.0343, i8** %header_name_end, align 4, !dbg !2207, !tbaa !1776
  store i8* %p.0343, i8** %header_start, align 4, !dbg !2167, !tbaa !1776
  store i8* %p.0343, i8** %header_end, align 4, !dbg !2208, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !2209, i64 0, metadata !1627), !dbg !2210
  br label %for.inc, !dbg !2211

if.then101:                                       ; preds = %if.end49
  store i8* %p.0343, i8** %header_name_end, align 4, !dbg !2212, !tbaa !1776
  store i8* %p.0343, i8** %header_start, align 4, !dbg !2214, !tbaa !1776
  store i8* %p.0343, i8** %header_end, align 4, !dbg !2215, !tbaa !1776
  br label %done, !dbg !2216

land.lhs.true:                                    ; preds = %if.end49
  %40 = load %struct.ngx_http_upstream_s** %upstream, align 4, !dbg !2169, !tbaa !1776
  %tobool109 = icmp eq %struct.ngx_http_upstream_s* %40, null, !dbg !2169
  br i1 %tobool109, label %cont130, label %land.lhs.true110, !dbg !2169

land.lhs.true110:                                 ; preds = %land.lhs.true
  %41 = load i8** %header_name_start, align 4, !dbg !2169, !tbaa !1776
  %sub.ptr.lhs.cast = ptrtoint i8* %p.0343 to i32, !dbg !2169
  %sub.ptr.rhs.cast = ptrtoint i8* %41 to i32, !dbg !2169
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2169
  %cmp112 = icmp eq i32 %sub.ptr.sub, 4, !dbg !2169
  br i1 %cmp112, label %cont117, label %cont130, !dbg !2169

cont117:                                          ; preds = %land.lhs.true110
  %call = tail call i32 @strncmp(i8* %41, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i32 4) nounwind readonly, !dbg !2169
  %cmp118 = icmp eq i32 %call, 0, !dbg !2169
  br i1 %cmp118, label %for.inc, label %cont130, !dbg !2169

cont130:                                          ; preds = %cont117, %land.lhs.true110, %land.lhs.true, %if.end49
  %42 = load i32* %6, align 4, !dbg !2217
  %43 = or i32 %42, 2, !dbg !2217
  store i32 %43, i32* %6, align 4, !dbg !2217
  br label %for.inc, !dbg !2218

sw.bb132:                                         ; preds = %for.body
  %conv133 = zext i8 %7 to i32, !dbg !2219
  switch i32 %conv133, label %sw.default143 [
    i32 32, label %for.inc
    i32 13, label %sw.bb134
    i32 10, label %sw.bb139
    i32 0, label %return
  ], !dbg !2219

sw.bb134:                                         ; preds = %sw.bb132
  store i8* %p.0343, i8** %header_start, align 4, !dbg !2221, !tbaa !1776
  store i8* %p.0343, i8** %header_end, align 4, !dbg !2224, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !2209, i64 0, metadata !1627), !dbg !2225
  br label %for.inc, !dbg !2226

sw.bb139:                                         ; preds = %sw.bb132
  store i8* %p.0343, i8** %header_start, align 4, !dbg !2227, !tbaa !1776
  store i8* %p.0343, i8** %header_end, align 4, !dbg !2229, !tbaa !1776
  br label %done, !dbg !2230

sw.default143:                                    ; preds = %sw.bb132
  store i8* %p.0343, i8** %header_start, align 4, !dbg !2231, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1906, i64 0, metadata !1627), !dbg !2233
  br label %for.inc, !dbg !2234

sw.bb148:                                         ; preds = %for.body
  %conv149 = zext i8 %7 to i32, !dbg !2235
  switch i32 %conv149, label %for.inc [
    i32 32, label %sw.bb150
    i32 13, label %sw.bb154
    i32 10, label %sw.bb158
    i32 0, label %return
  ], !dbg !2235

sw.bb150:                                         ; preds = %sw.bb148
  store i8* %p.0343, i8** %header_end, align 4, !dbg !2237, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !1913, i64 0, metadata !1627), !dbg !2240
  br label %for.inc, !dbg !2241

sw.bb154:                                         ; preds = %sw.bb148
  store i8* %p.0343, i8** %header_end, align 4, !dbg !2242, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !2209, i64 0, metadata !1627), !dbg !2244
  br label %for.inc, !dbg !2245

sw.bb158:                                         ; preds = %sw.bb148
  store i8* %p.0343, i8** %header_end, align 4, !dbg !2246, !tbaa !1776
  br label %done, !dbg !2248

sw.bb162:                                         ; preds = %for.body
  %conv163 = zext i8 %7 to i32, !dbg !2249
  switch i32 %conv163, label %cont171 [
    i32 32, label %for.inc
    i32 13, label %cont166
    i32 10, label %done
    i32 0, label %return
  ], !dbg !2249

cont166:                                          ; preds = %sw.bb162
  tail call void @llvm.dbg.value(metadata !2209, i64 0, metadata !1627), !dbg !2251
  br label %for.inc, !dbg !2254

cont171:                                          ; preds = %sw.bb162
  tail call void @llvm.dbg.value(metadata !1906, i64 0, metadata !1627), !dbg !2255
  br label %for.inc, !dbg !2257

sw.bb173:                                         ; preds = %for.body
  %cond207 = icmp eq i8 %7, 10, !dbg !2258
  %.state.0 = select i1 %cond207, i32 0, i32 5, !dbg !2258
  br label %for.inc, !dbg !2258

sw.bb180:                                         ; preds = %for.body
  %conv181 = zext i8 %7 to i32, !dbg !2260
  switch i32 %conv181, label %return [
    i32 10, label %done
    i32 13, label %for.inc
  ], !dbg !2260

sw.bb185:                                         ; preds = %for.body
  %cond = icmp eq i8 %7, 10, !dbg !2262
  br i1 %cond, label %header_done, label %return, !dbg !2262

for.inc:                                          ; preds = %sw.bb173, %cont117, %cont42, %if.then81, %if.then90, %cont130, %for.body, %cont27, %cont14, %sw.bb2, %cont74, %cont64, %sw.default143, %sw.bb134, %sw.bb132, %sw.bb148, %sw.bb154, %sw.bb150, %cont171, %cont166, %sw.bb162, %sw.bb180
  %hash.1 = phi i32 [ %hash.0344, %for.body ], [ %hash.0344, %sw.bb180 ], [ %hash.0344, %cont171 ], [ %hash.0344, %cont166 ], [ %hash.0344, %sw.bb162 ], [ %hash.0344, %sw.bb148 ], [ %hash.0344, %sw.bb154 ], [ %hash.0344, %sw.bb150 ], [ %hash.0344, %sw.default143 ], [ %hash.0344, %sw.bb134 ], [ %hash.0344, %sw.bb132 ], [ %18, %cont42 ], [ %31, %cont64 ], [ %hash.0344, %cont74 ], [ %hash.0344, %if.then81 ], [ %hash.0344, %if.then90 ], [ %hash.0344, %cont130 ], [ %conv15, %cont14 ], [ %hash.0344, %cont27 ], [ %hash.0344, %sw.bb2 ], [ %hash.0344, %cont117 ], [ %hash.0344, %sw.bb173 ]
  %i.1 = phi i32 [ %i.0345, %for.body ], [ %i.0345, %sw.bb180 ], [ %i.0345, %cont171 ], [ %i.0345, %cont166 ], [ %i.0345, %sw.bb162 ], [ %i.0345, %sw.bb148 ], [ %i.0345, %sw.bb154 ], [ %i.0345, %sw.bb150 ], [ %i.0345, %sw.default143 ], [ %i.0345, %sw.bb134 ], [ %i.0345, %sw.bb132 ], [ %and, %cont42 ], [ %and72, %cont64 ], [ %i.0345, %cont74 ], [ %i.0345, %if.then81 ], [ %i.0345, %if.then90 ], [ %i.0345, %cont130 ], [ 1, %cont14 ], [ %i.0345, %cont27 ], [ %i.0345, %sw.bb2 ], [ %i.0345, %cont117 ], [ %i.0345, %sw.bb173 ]
  %state.1 = phi i32 [ %state.0346, %for.body ], [ 6, %sw.bb180 ], [ 3, %cont171 ], [ 6, %cont166 ], [ 4, %sw.bb162 ], [ 3, %sw.bb148 ], [ 6, %sw.bb154 ], [ 4, %sw.bb150 ], [ 3, %sw.default143 ], [ 6, %sw.bb134 ], [ 2, %sw.bb132 ], [ 1, %cont42 ], [ 1, %cont64 ], [ 1, %cont74 ], [ 2, %if.then81 ], [ 6, %if.then90 ], [ 1, %cont130 ], [ 1, %cont14 ], [ 1, %cont27 ], [ 7, %sw.bb2 ], [ 5, %cont117 ], [ %.state.0, %sw.bb173 ]
  %incdec.ptr = getelementptr inbounds i8* %p.0343, i32 1, !dbg !2149
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1624), !dbg !2149
  %44 = load i8** %last, align 4, !dbg !2149, !tbaa !1776
  %cmp = icmp ult i8* %incdec.ptr, %44, !dbg !2149
  br i1 %cmp, label %for.body, label %for.end, !dbg !2149

for.end:                                          ; preds = %for.inc, %entry
  %state.0.lcssa = phi i32 [ %0, %entry ], [ %state.1, %for.inc ]
  %i.0.lcssa = phi i32 [ %2, %entry ], [ %i.1, %for.inc ]
  %hash.0.lcssa = phi i32 [ %1, %entry ], [ %hash.1, %for.inc ]
  %p.0.lcssa = phi i8* [ %3, %entry ], [ %incdec.ptr, %for.inc ]
  store i8* %p.0.lcssa, i8** %pos, align 4, !dbg !2263, !tbaa !1776
  store i32 %state.0.lcssa, i32* %state1, align 4, !dbg !2264, !tbaa !1771
  store i32 %hash.0.lcssa, i32* %header_hash, align 4, !dbg !2265, !tbaa !1771
  store i32 %i.0.lcssa, i32* %lowcase_index, align 4, !dbg !2266, !tbaa !1771
  br label %return, !dbg !2267

done:                                             ; preds = %sw.bb180, %sw.bb162, %sw.bb158, %sw.bb139, %if.then101
  %add.ptr = getelementptr inbounds i8* %p.0343, i32 1, !dbg !2268
  store i8* %add.ptr, i8** %pos, align 4, !dbg !2268, !tbaa !1776
  store i32 0, i32* %state1, align 4, !dbg !2269, !tbaa !1771
  store i32 %hash.0344, i32* %header_hash, align 4, !dbg !2270, !tbaa !1771
  store i32 %i.0345, i32* %lowcase_index, align 4, !dbg !2271, !tbaa !1771
  br label %return, !dbg !2272

header_done:                                      ; preds = %sw.bb185, %sw.bb5
  %add.ptr202 = getelementptr inbounds i8* %p.0343, i32 1, !dbg !2273
  store i8* %add.ptr202, i8** %pos, align 4, !dbg !2273, !tbaa !1776
  store i32 0, i32* %state1, align 4, !dbg !2274, !tbaa !1771
  br label %return, !dbg !2275

return:                                           ; preds = %sw.bb180, %sw.bb162, %sw.bb148, %sw.bb132, %if.end49, %if.end, %sw.bb185, %header_done, %done, %for.end
  %retval.0 = phi i32 [ 1, %header_done ], [ 0, %done ], [ -2, %for.end ], [ 13, %sw.bb185 ], [ 13, %if.end ], [ 13, %if.end49 ], [ 13, %sw.bb132 ], [ 13, %sw.bb148 ], [ 13, %sw.bb162 ], [ 13, %sw.bb180 ]
  ret i32 %retval.0, !dbg !2276
}

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

define i32 @ngx_http_parse_complex_uri(%struct.ngx_http_request_s* nocapture %r, i32 %merge_slashes) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1642), !dbg !2277
  tail call void @llvm.dbg.value(metadata !{i32 %merge_slashes}, i64 0, metadata !1643), !dbg !2277
  tail call void @llvm.dbg.value(metadata !2278, i64 0, metadata !1647), !dbg !2279
  tail call void @llvm.dbg.value(metadata !1696, i64 0, metadata !1651), !dbg !2280
  tail call void @llvm.dbg.value(metadata !1696, i64 0, metadata !1650), !dbg !2281
  %uri_start = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 68, !dbg !2282
  %0 = load i8** %uri_start, align 4, !dbg !2282, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !1648), !dbg !2282
  %uri = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 22, !dbg !2283
  %data = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 22, i32 1, !dbg !2283
  %1 = load i8** %data, align 4, !dbg !2283, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !1649), !dbg !2283
  %uri_ext = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 70, !dbg !2284
  store i8* null, i8** %uri_ext, align 4, !dbg !2284, !tbaa !1776
  %args_start = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 71, !dbg !2285
  store i8* null, i8** %args_start, align 4, !dbg !2285, !tbaa !1776
  %incdec.ptr = getelementptr inbounds i8* %0, i32 1, !dbg !2286
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1648), !dbg !2286
  tail call void @llvm.dbg.value(metadata !{i8 %3}, i64 0, metadata !1646), !dbg !2286
  %uri_end = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 69, !dbg !2287
  %2 = load i8** %uri_end, align 4, !dbg !2287, !tbaa !1776
  %cmp587 = icmp ugt i8* %incdec.ptr, %2, !dbg !2287
  br i1 %cmp587, label %done, label %while.body.lr.ph, !dbg !2287

while.body.lr.ph:                                 ; preds = %entry
  %3 = load i8* %0, align 1, !dbg !2286, !tbaa !1772
  %4 = getelementptr %struct.ngx_http_request_s* %r, i32 0, i32 49, !dbg !2288
  %5 = bitcast i8* %4 to i32*, !dbg !2288
  %tobool65 = icmp eq i32 %merge_slashes, 0, !dbg !2293
  br label %while.body, !dbg !2287

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %quoted_state.0593 = phi i32 [ 0, %while.body.lr.ph ], [ %quoted_state.0.be, %while.cond.backedge ]
  %state.0592 = phi i32 [ 0, %while.body.lr.ph ], [ %state.0.be, %while.cond.backedge ]
  %u.0591 = phi i8* [ %1, %while.body.lr.ph ], [ %u.0.be, %while.cond.backedge ]
  %p.0590 = phi i8* [ %incdec.ptr, %while.body.lr.ph ], [ %p.0.be, %while.cond.backedge ]
  %decoded.0589 = phi i8 [ 0, %while.body.lr.ph ], [ %decoded.0.be, %while.cond.backedge ]
  %ch.0588 = phi i8 [ %3, %while.body.lr.ph ], [ %ch.0.be, %while.cond.backedge ]
  switch i32 %state.0592, label %while.cond.backedge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb37
    i32 2, label %sw.bb89
    i32 3, label %sw.bb140
    i32 4, label %cont202
    i32 5, label %sw.bb250
  ], !dbg !2297

while.cond.backedge:                              ; preds = %cont326, %cont274, %while.body, %cont333, %cont284, %cont247, %cont219, %sw.epilog198, %cont162, %sw.epilog138, %cont111, %sw.epilog87, %cont59, %sw.epilog, %if.then, %cont342
  %ch.0.be = phi i8 [ %ch.0588, %while.body ], [ %84, %cont284 ], [ %101, %cont333 ], [ %59, %cont219 ], [ %71, %cont247 ], [ %44, %cont162 ], [ %49, %sw.epilog198 ], [ %34, %cont111 ], [ %37, %sw.epilog138 ], [ %24, %cont59 ], [ %27, %sw.epilog87 ], [ %13, %if.then ], [ %17, %sw.epilog ], [ %conv327, %cont342 ], [ %conv275, %cont274 ], [ %conv327, %cont326 ]
  %decoded.0.be = phi i8 [ %decoded.0589, %while.body ], [ %decoded.0589, %cont284 ], [ %decoded.0589, %cont333 ], [ %conv217, %cont219 ], [ %conv245, %cont247 ], [ %decoded.0589, %cont162 ], [ %decoded.0589, %sw.epilog198 ], [ %decoded.0589, %cont111 ], [ %decoded.0589, %sw.epilog138 ], [ %decoded.0589, %cont59 ], [ %decoded.0589, %sw.epilog87 ], [ %decoded.0589, %if.then ], [ %decoded.0589, %sw.epilog ], [ %decoded.0589, %cont342 ], [ %decoded.0589, %cont274 ], [ %decoded.0589, %cont326 ]
  %p.0.be = phi i8* [ %p.0590, %while.body ], [ %incdec.ptr286, %cont284 ], [ %incdec.ptr335, %cont333 ], [ %incdec.ptr220, %cont219 ], [ %incdec.ptr248, %cont247 ], [ %incdec.ptr164, %cont162 ], [ %incdec.ptr199, %sw.epilog198 ], [ %incdec.ptr113, %cont111 ], [ %incdec.ptr139, %sw.epilog138 ], [ %incdec.ptr61, %cont59 ], [ %incdec.ptr88, %sw.epilog87 ], [ %incdec.ptr16, %if.then ], [ %incdec.ptr36, %sw.epilog ], [ %p.0590, %cont342 ], [ %p.0590, %cont274 ], [ %p.0590, %cont326 ]
  %u.0.be = phi i8* [ %u.0591, %while.body ], [ %incdec.ptr285, %cont284 ], [ %incdec.ptr334, %cont333 ], [ %u.0591, %cont219 ], [ %u.0591, %cont247 ], [ %incdec.ptr163, %cont162 ], [ %u.5, %sw.epilog198 ], [ %incdec.ptr112, %cont111 ], [ %u.3, %sw.epilog138 ], [ %incdec.ptr60, %cont59 ], [ %u.2, %sw.epilog87 ], [ %incdec.ptr15, %if.then ], [ %u.1, %sw.epilog ], [ %u.0591, %cont342 ], [ %u.0591, %cont274 ], [ %u.0591, %cont326 ]
  %state.0.be = phi i32 [ %state.0592, %while.body ], [ 0, %cont284 ], [ 0, %cont333 ], [ 5, %cont219 ], [ 5, %cont247 ], [ 0, %cont162 ], [ %state.4, %sw.epilog198 ], [ 0, %cont111 ], [ %state.3, %sw.epilog138 ], [ 0, %cont59 ], [ %state.2, %sw.epilog87 ], [ 0, %if.then ], [ %state.1, %sw.epilog ], [ %quoted_state.0593, %cont342 ], [ %quoted_state.0593, %cont274 ], [ %quoted_state.0593, %cont326 ]
  %quoted_state.0.be = phi i32 [ %quoted_state.0593, %while.body ], [ %quoted_state.0593, %cont284 ], [ %quoted_state.0593, %cont333 ], [ %quoted_state.0593, %cont219 ], [ %quoted_state.0593, %cont247 ], [ %quoted_state.0593, %cont162 ], [ %quoted_state.4, %sw.epilog198 ], [ %quoted_state.0593, %cont111 ], [ %quoted_state.3, %sw.epilog138 ], [ %quoted_state.0593, %cont59 ], [ %quoted_state.2, %sw.epilog87 ], [ %quoted_state.0593, %if.then ], [ %quoted_state.1, %sw.epilog ], [ %quoted_state.0593, %cont342 ], [ %quoted_state.0593, %cont274 ], [ %quoted_state.0593, %cont326 ]
  %6 = load i8** %uri_end, align 4, !dbg !2287, !tbaa !1776
  %cmp = icmp ugt i8* %p.0.be, %6, !dbg !2287
  br i1 %cmp, label %done, label %while.body, !dbg !2287

sw.bb:                                            ; preds = %while.body
  %conv = zext i8 %ch.0588 to i32, !dbg !2298
  %shr558 = lshr i32 %conv, 5, !dbg !2298
  %arrayidx = getelementptr inbounds [8 x i32]* @usual, i32 0, i32 %shr558, !dbg !2298
  %7 = load i32* %arrayidx, align 4, !dbg !2298, !tbaa !1771
  %and = and i32 %conv, 31, !dbg !2298
  %8 = xor i32 %and, 31, !dbg !2298
  %shl.check = lshr i32 1, %8, !dbg !2298
  %9 = icmp eq i32 %shl.check, 0, !dbg !2298
  br i1 %9, label %cont11, label %ioc_bb10, !dbg !2298

ioc_bb10:                                         ; preds = %sw.bb
  %10 = zext i32 %and to i64, !dbg !2298
  tail call void @__ioc_report_shl_strict(i32 1097, i32 33, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 1, i64 %10, i8 13) nounwind, !dbg !2298
  br label %cont11, !dbg !2298

cont11:                                           ; preds = %ioc_bb10, %sw.bb
  %shl = shl i32 1, %and, !dbg !2298
  %11 = icmp sgt i32 %shl, -1, !dbg !2298
  br i1 %11, label %cont13, label %ioc_bb12, !dbg !2298

ioc_bb12:                                         ; preds = %cont11
  %12 = sext i32 %shl to i64, !dbg !2298
  tail call void @__ioc_report_conversion(i32 1097, i32 30, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %12, i8 1) nounwind, !dbg !2298
  br label %cont13, !dbg !2298

cont13:                                           ; preds = %ioc_bb12, %cont11
  %and14 = and i32 %7, %shl, !dbg !2298
  %tobool = icmp eq i32 %and14, 0, !dbg !2298
  br i1 %tobool, label %if.end, label %if.then, !dbg !2298

if.then:                                          ; preds = %cont13
  %incdec.ptr15 = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2299
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr15}, i64 0, metadata !1649), !dbg !2299
  store i8 %ch.0588, i8* %u.0591, align 1, !dbg !2299, !tbaa !1772
  %incdec.ptr16 = getelementptr inbounds i8* %p.0590, i32 1, !dbg !2301
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr16}, i64 0, metadata !1648), !dbg !2301
  %13 = load i8* %p.0590, align 1, !dbg !2301, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %13}, i64 0, metadata !1646), !dbg !2301
  br label %while.cond.backedge, !dbg !2302

if.end:                                           ; preds = %cont13
  switch i32 %conv, label %sw.default [
    i32 47, label %sw.bb18
    i32 37, label %sw.epilog
    i32 63, label %sw.bb26
    i32 35, label %done
    i32 46, label %sw.bb29
    i32 43, label %cont34
  ], !dbg !2303

sw.bb18:                                          ; preds = %if.end
  store i8* null, i8** %uri_ext, align 4, !dbg !2304, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !2179, i64 0, metadata !1650), !dbg !2306
  %incdec.ptr22 = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2307
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr22}, i64 0, metadata !1649), !dbg !2307
  store i8 %ch.0588, i8* %u.0591, align 1, !dbg !2307, !tbaa !1772
  br label %sw.epilog, !dbg !2308

sw.bb26:                                          ; preds = %if.end
  store i8* %p.0590, i8** %args_start, align 4, !dbg !2309, !tbaa !1776
  br label %while.cond370.preheader, !dbg !2311

while.cond370.preheader:                          ; preds = %sw.bb187, %sw.bb127, %sw.bb76, %sw.bb26
  %14 = load i8** %uri_end, align 4, !dbg !2312, !tbaa !1776
  br label %while.cond370, !dbg !2312

sw.bb29:                                          ; preds = %if.end
  %add.ptr = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2313
  store i8* %add.ptr, i8** %uri_ext, align 4, !dbg !2313, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !1649), !dbg !2315
  store i8 %ch.0588, i8* %u.0591, align 1, !dbg !2315, !tbaa !1772
  br label %sw.epilog, !dbg !2316

cont34:                                           ; preds = %if.end
  %15 = load i32* %5, align 4, !dbg !2288
  %16 = or i32 %15, -2147483648, !dbg !2288
  store i32 %16, i32* %5, align 4, !dbg !2288
  br label %sw.default, !dbg !2288

sw.default:                                       ; preds = %if.end, %cont34
  %incdec.ptr35 = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2317
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr35}, i64 0, metadata !1649), !dbg !2317
  store i8 %ch.0588, i8* %u.0591, align 1, !dbg !2317, !tbaa !1772
  br label %sw.epilog, !dbg !2319

sw.epilog:                                        ; preds = %if.end, %sw.default, %sw.bb29, %sw.bb18
  %u.1 = phi i8* [ %incdec.ptr35, %sw.default ], [ %add.ptr, %sw.bb29 ], [ %incdec.ptr22, %sw.bb18 ], [ %u.0591, %if.end ]
  %state.1 = phi i32 [ 0, %sw.default ], [ 0, %sw.bb29 ], [ 1, %sw.bb18 ], [ 4, %if.end ]
  %quoted_state.1 = phi i32 [ %quoted_state.0593, %sw.default ], [ %quoted_state.0593, %sw.bb29 ], [ %quoted_state.0593, %sw.bb18 ], [ 0, %if.end ]
  %incdec.ptr36 = getelementptr inbounds i8* %p.0590, i32 1, !dbg !2320
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr36}, i64 0, metadata !1648), !dbg !2320
  %17 = load i8* %p.0590, align 1, !dbg !2320, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %17}, i64 0, metadata !1646), !dbg !2320
  br label %while.cond.backedge, !dbg !2321

sw.bb37:                                          ; preds = %while.body
  %conv38 = zext i8 %ch.0588 to i32, !dbg !2322
  %shr41557 = lshr i32 %conv38, 5, !dbg !2322
  %arrayidx42 = getelementptr inbounds [8 x i32]* @usual, i32 0, i32 %shr41557, !dbg !2322
  %18 = load i32* %arrayidx42, align 4, !dbg !2322, !tbaa !1771
  %and44 = and i32 %conv38, 31, !dbg !2322
  %19 = xor i32 %and44, 31, !dbg !2322
  %shl.check48 = lshr i32 1, %19, !dbg !2322
  %20 = icmp eq i32 %shl.check48, 0, !dbg !2322
  br i1 %20, label %cont50, label %ioc_bb49, !dbg !2322

ioc_bb49:                                         ; preds = %sw.bb37
  %21 = zext i32 %and44 to i64, !dbg !2322
  tail call void @__ioc_report_shl_strict(i32 1151, i32 33, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 1, i64 %21, i8 13) nounwind, !dbg !2322
  br label %cont50, !dbg !2322

cont50:                                           ; preds = %ioc_bb49, %sw.bb37
  %shl51 = shl i32 1, %and44, !dbg !2322
  %22 = icmp sgt i32 %shl51, -1, !dbg !2322
  br i1 %22, label %cont54, label %ioc_bb53, !dbg !2322

ioc_bb53:                                         ; preds = %cont50
  %23 = sext i32 %shl51 to i64, !dbg !2322
  tail call void @__ioc_report_conversion(i32 1151, i32 30, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %23, i8 1) nounwind, !dbg !2322
  br label %cont54, !dbg !2322

cont54:                                           ; preds = %ioc_bb53, %cont50
  %and55 = and i32 %18, %shl51, !dbg !2322
  %tobool56 = icmp eq i32 %and55, 0, !dbg !2322
  br i1 %tobool56, label %if.end62, label %cont59, !dbg !2322

cont59:                                           ; preds = %cont54
  tail call void @llvm.dbg.value(metadata !1696, i64 0, metadata !1650), !dbg !2323
  %incdec.ptr60 = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2325
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr60}, i64 0, metadata !1649), !dbg !2325
  store i8 %ch.0588, i8* %u.0591, align 1, !dbg !2325, !tbaa !1772
  %incdec.ptr61 = getelementptr inbounds i8* %p.0590, i32 1, !dbg !2326
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr61}, i64 0, metadata !1648), !dbg !2326
  %24 = load i8* %p.0590, align 1, !dbg !2326, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %24}, i64 0, metadata !1646), !dbg !2326
  br label %while.cond.backedge, !dbg !2327

if.end62:                                         ; preds = %cont54
  switch i32 %conv38, label %cont85 [
    i32 47, label %sw.bb64
    i32 46, label %cont71
    i32 37, label %sw.epilog87
    i32 63, label %sw.bb76
    i32 35, label %done
    i32 43, label %cont81
  ], !dbg !2328

sw.bb64:                                          ; preds = %if.end62
  br i1 %tobool65, label %if.then66, label %sw.epilog87, !dbg !2293

if.then66:                                        ; preds = %sw.bb64
  %incdec.ptr67 = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2329
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr67}, i64 0, metadata !1649), !dbg !2329
  store i8 %ch.0588, i8* %u.0591, align 1, !dbg !2329, !tbaa !1772
  br label %sw.epilog87, !dbg !2331

cont71:                                           ; preds = %if.end62
  tail call void @llvm.dbg.value(metadata !2204, i64 0, metadata !1650), !dbg !2332
  %incdec.ptr72 = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2334
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr72}, i64 0, metadata !1649), !dbg !2334
  store i8 %ch.0588, i8* %u.0591, align 1, !dbg !2334, !tbaa !1772
  br label %sw.epilog87, !dbg !2335

sw.bb76:                                          ; preds = %if.end62
  store i8* %p.0590, i8** %args_start, align 4, !dbg !2336, !tbaa !1776
  br label %while.cond370.preheader, !dbg !2338

cont81:                                           ; preds = %if.end62
  %25 = load i32* %5, align 4, !dbg !2339
  %26 = or i32 %25, -2147483648, !dbg !2339
  store i32 %26, i32* %5, align 4, !dbg !2339
  br label %cont85, !dbg !2339

cont85:                                           ; preds = %cont81, %if.end62
  tail call void @llvm.dbg.value(metadata !1696, i64 0, metadata !1650), !dbg !2340
  %incdec.ptr86 = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2342
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr86}, i64 0, metadata !1649), !dbg !2342
  store i8 %ch.0588, i8* %u.0591, align 1, !dbg !2342, !tbaa !1772
  br label %sw.epilog87, !dbg !2343

sw.epilog87:                                      ; preds = %if.end62, %sw.bb64, %if.then66, %cont85, %cont71
  %u.2 = phi i8* [ %incdec.ptr86, %cont85 ], [ %incdec.ptr72, %cont71 ], [ %u.0591, %sw.bb64 ], [ %incdec.ptr67, %if.then66 ], [ %u.0591, %if.end62 ]
  %state.2 = phi i32 [ 0, %cont85 ], [ 2, %cont71 ], [ 1, %sw.bb64 ], [ 1, %if.then66 ], [ 4, %if.end62 ]
  %quoted_state.2 = phi i32 [ %quoted_state.0593, %cont85 ], [ %quoted_state.0593, %cont71 ], [ %quoted_state.0593, %sw.bb64 ], [ %quoted_state.0593, %if.then66 ], [ 1, %if.end62 ]
  %incdec.ptr88 = getelementptr inbounds i8* %p.0590, i32 1, !dbg !2344
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr88}, i64 0, metadata !1648), !dbg !2344
  %27 = load i8* %p.0590, align 1, !dbg !2344, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %27}, i64 0, metadata !1646), !dbg !2344
  br label %while.cond.backedge, !dbg !2345

sw.bb89:                                          ; preds = %while.body
  %conv90 = zext i8 %ch.0588 to i32, !dbg !2346
  %shr93556 = lshr i32 %conv90, 5, !dbg !2346
  %arrayidx94 = getelementptr inbounds [8 x i32]* @usual, i32 0, i32 %shr93556, !dbg !2346
  %28 = load i32* %arrayidx94, align 4, !dbg !2346, !tbaa !1771
  %and96 = and i32 %conv90, 31, !dbg !2346
  %29 = xor i32 %and96, 31, !dbg !2346
  %shl.check100 = lshr i32 1, %29, !dbg !2346
  %30 = icmp eq i32 %shl.check100, 0, !dbg !2346
  br i1 %30, label %cont102, label %ioc_bb101, !dbg !2346

ioc_bb101:                                        ; preds = %sw.bb89
  %31 = zext i32 %and96 to i64, !dbg !2346
  tail call void @__ioc_report_shl_strict(i32 1200, i32 33, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 1, i64 %31, i8 13) nounwind, !dbg !2346
  br label %cont102, !dbg !2346

cont102:                                          ; preds = %ioc_bb101, %sw.bb89
  %shl103 = shl i32 1, %and96, !dbg !2346
  %32 = icmp sgt i32 %shl103, -1, !dbg !2346
  br i1 %32, label %cont106, label %ioc_bb105, !dbg !2346

ioc_bb105:                                        ; preds = %cont102
  %33 = sext i32 %shl103 to i64, !dbg !2346
  tail call void @__ioc_report_conversion(i32 1200, i32 30, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %33, i8 1) nounwind, !dbg !2346
  br label %cont106, !dbg !2346

cont106:                                          ; preds = %ioc_bb105, %cont102
  %and107 = and i32 %28, %shl103, !dbg !2346
  %tobool108 = icmp eq i32 %and107, 0, !dbg !2346
  br i1 %tobool108, label %if.end114, label %cont111, !dbg !2346

cont111:                                          ; preds = %cont106
  tail call void @llvm.dbg.value(metadata !1696, i64 0, metadata !1650), !dbg !2348
  %incdec.ptr112 = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2350
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr112}, i64 0, metadata !1649), !dbg !2350
  store i8 %ch.0588, i8* %u.0591, align 1, !dbg !2350, !tbaa !1772
  %incdec.ptr113 = getelementptr inbounds i8* %p.0590, i32 1, !dbg !2351
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr113}, i64 0, metadata !1648), !dbg !2351
  %34 = load i8* %p.0590, align 1, !dbg !2351, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %34}, i64 0, metadata !1646), !dbg !2351
  br label %while.cond.backedge, !dbg !2352

if.end114:                                        ; preds = %cont106
  switch i32 %conv90, label %cont136 [
    i32 47, label %cont118
    i32 46, label %cont122
    i32 37, label %sw.epilog138
    i32 63, label %sw.bb127
    i32 35, label %done
    i32 43, label %cont132
  ], !dbg !2353

cont118:                                          ; preds = %if.end114
  tail call void @llvm.dbg.value(metadata !2179, i64 0, metadata !1650), !dbg !2354
  %incdec.ptr119 = getelementptr inbounds i8* %u.0591, i32 -1, !dbg !2357
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr119}, i64 0, metadata !1649), !dbg !2357
  br label %sw.epilog138, !dbg !2358

cont122:                                          ; preds = %if.end114
  tail call void @llvm.dbg.value(metadata !1906, i64 0, metadata !1650), !dbg !2359
  %incdec.ptr123 = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2361
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr123}, i64 0, metadata !1649), !dbg !2361
  store i8 %ch.0588, i8* %u.0591, align 1, !dbg !2361, !tbaa !1772
  br label %sw.epilog138, !dbg !2362

sw.bb127:                                         ; preds = %if.end114
  store i8* %p.0590, i8** %args_start, align 4, !dbg !2363, !tbaa !1776
  br label %while.cond370.preheader, !dbg !2365

cont132:                                          ; preds = %if.end114
  %35 = load i32* %5, align 4, !dbg !2366
  %36 = or i32 %35, -2147483648, !dbg !2366
  store i32 %36, i32* %5, align 4, !dbg !2366
  br label %cont136, !dbg !2366

cont136:                                          ; preds = %cont132, %if.end114
  tail call void @llvm.dbg.value(metadata !1696, i64 0, metadata !1650), !dbg !2367
  %incdec.ptr137 = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2369
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr137}, i64 0, metadata !1649), !dbg !2369
  store i8 %ch.0588, i8* %u.0591, align 1, !dbg !2369, !tbaa !1772
  br label %sw.epilog138, !dbg !2370

sw.epilog138:                                     ; preds = %if.end114, %cont136, %cont122, %cont118
  %u.3 = phi i8* [ %incdec.ptr137, %cont136 ], [ %incdec.ptr123, %cont122 ], [ %incdec.ptr119, %cont118 ], [ %u.0591, %if.end114 ]
  %state.3 = phi i32 [ 0, %cont136 ], [ 3, %cont122 ], [ 1, %cont118 ], [ 4, %if.end114 ]
  %quoted_state.3 = phi i32 [ %quoted_state.0593, %cont136 ], [ %quoted_state.0593, %cont122 ], [ %quoted_state.0593, %cont118 ], [ 2, %if.end114 ]
  %incdec.ptr139 = getelementptr inbounds i8* %p.0590, i32 1, !dbg !2371
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr139}, i64 0, metadata !1648), !dbg !2371
  %37 = load i8* %p.0590, align 1, !dbg !2371, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %37}, i64 0, metadata !1646), !dbg !2371
  br label %while.cond.backedge, !dbg !2372

sw.bb140:                                         ; preds = %while.body
  %conv141 = zext i8 %ch.0588 to i32, !dbg !2373
  %shr144555 = lshr i32 %conv141, 5, !dbg !2373
  %arrayidx145 = getelementptr inbounds [8 x i32]* @usual, i32 0, i32 %shr144555, !dbg !2373
  %38 = load i32* %arrayidx145, align 4, !dbg !2373, !tbaa !1771
  %and147 = and i32 %conv141, 31, !dbg !2373
  %39 = xor i32 %and147, 31, !dbg !2373
  %shl.check151 = lshr i32 1, %39, !dbg !2373
  %40 = icmp eq i32 %shl.check151, 0, !dbg !2373
  br i1 %40, label %cont153, label %ioc_bb152, !dbg !2373

ioc_bb152:                                        ; preds = %sw.bb140
  %41 = zext i32 %and147 to i64, !dbg !2373
  tail call void @__ioc_report_shl_strict(i32 1248, i32 33, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 1, i64 %41, i8 13) nounwind, !dbg !2373
  br label %cont153, !dbg !2373

cont153:                                          ; preds = %ioc_bb152, %sw.bb140
  %shl154 = shl i32 1, %and147, !dbg !2373
  %42 = icmp sgt i32 %shl154, -1, !dbg !2373
  br i1 %42, label %cont157, label %ioc_bb156, !dbg !2373

ioc_bb156:                                        ; preds = %cont153
  %43 = sext i32 %shl154 to i64, !dbg !2373
  tail call void @__ioc_report_conversion(i32 1248, i32 30, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %43, i8 1) nounwind, !dbg !2373
  br label %cont157, !dbg !2373

cont157:                                          ; preds = %ioc_bb156, %cont153
  %and158 = and i32 %38, %shl154, !dbg !2373
  %tobool159 = icmp eq i32 %and158, 0, !dbg !2373
  br i1 %tobool159, label %if.end165, label %cont162, !dbg !2373

cont162:                                          ; preds = %cont157
  tail call void @llvm.dbg.value(metadata !1696, i64 0, metadata !1650), !dbg !2375
  %incdec.ptr163 = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2377
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr163}, i64 0, metadata !1649), !dbg !2377
  store i8 %ch.0588, i8* %u.0591, align 1, !dbg !2377, !tbaa !1772
  %incdec.ptr164 = getelementptr inbounds i8* %p.0590, i32 1, !dbg !2378
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr164}, i64 0, metadata !1648), !dbg !2378
  %44 = load i8* %p.0590, align 1, !dbg !2378, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %44}, i64 0, metadata !1646), !dbg !2378
  br label %while.cond.backedge, !dbg !2379

if.end165:                                        ; preds = %cont157
  switch i32 %conv141, label %cont196 [
    i32 47, label %cont169
    i32 37, label %sw.epilog198
    i32 63, label %sw.bb187
    i32 35, label %done
    i32 43, label %cont192
  ], !dbg !2380

cont169:                                          ; preds = %if.end165
  tail call void @llvm.dbg.value(metadata !2179, i64 0, metadata !1650), !dbg !2381
  %add.ptr170 = getelementptr inbounds i8* %u.0591, i32 -5, !dbg !2384
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr170}, i64 0, metadata !1649), !dbg !2384
  %45 = load i8** %data, align 4, !dbg !2385, !tbaa !1776
  br label %for.cond, !dbg !2388

for.cond:                                         ; preds = %if.end176, %cont169
  %u.4 = phi i8* [ %add.ptr170, %cont169 ], [ %incdec.ptr183, %if.end176 ]
  %cmp173 = icmp ult i8* %u.4, %45, !dbg !2385
  br i1 %cmp173, label %return, label %if.end176, !dbg !2385

if.end176:                                        ; preds = %for.cond
  %46 = load i8* %u.4, align 1, !dbg !2389, !tbaa !1772
  %cmp178 = icmp eq i8 %46, 47, !dbg !2389
  %incdec.ptr183 = getelementptr inbounds i8* %u.4, i32 -1, !dbg !2390
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr183}, i64 0, metadata !1649), !dbg !2390
  br i1 %cmp178, label %if.then180, label %for.cond, !dbg !2389

if.then180:                                       ; preds = %if.end176
  %incdec.ptr181 = getelementptr inbounds i8* %u.4, i32 1, !dbg !2391
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr181}, i64 0, metadata !1649), !dbg !2391
  br label %sw.epilog198, !dbg !2393

sw.bb187:                                         ; preds = %if.end165
  store i8* %p.0590, i8** %args_start, align 4, !dbg !2394, !tbaa !1776
  br label %while.cond370.preheader, !dbg !2396

cont192:                                          ; preds = %if.end165
  %47 = load i32* %5, align 4, !dbg !2397
  %48 = or i32 %47, -2147483648, !dbg !2397
  store i32 %48, i32* %5, align 4, !dbg !2397
  br label %cont196, !dbg !2397

cont196:                                          ; preds = %cont192, %if.end165
  tail call void @llvm.dbg.value(metadata !1696, i64 0, metadata !1650), !dbg !2398
  %incdec.ptr197 = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2400
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr197}, i64 0, metadata !1649), !dbg !2400
  store i8 %ch.0588, i8* %u.0591, align 1, !dbg !2400, !tbaa !1772
  br label %sw.epilog198, !dbg !2401

sw.epilog198:                                     ; preds = %if.end165, %cont196, %if.then180
  %u.5 = phi i8* [ %incdec.ptr197, %cont196 ], [ %incdec.ptr181, %if.then180 ], [ %u.0591, %if.end165 ]
  %state.4 = phi i32 [ 0, %cont196 ], [ 1, %if.then180 ], [ 4, %if.end165 ]
  %quoted_state.4 = phi i32 [ %quoted_state.0593, %cont196 ], [ %quoted_state.0593, %if.then180 ], [ 3, %if.end165 ]
  %incdec.ptr199 = getelementptr inbounds i8* %p.0590, i32 1, !dbg !2402
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr199}, i64 0, metadata !1648), !dbg !2402
  %49 = load i8* %p.0590, align 1, !dbg !2402, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %49}, i64 0, metadata !1646), !dbg !2402
  br label %while.cond.backedge, !dbg !2403

cont202:                                          ; preds = %while.body
  %50 = load i32* %5, align 4, !dbg !2404
  %51 = or i32 %50, 1073741824, !dbg !2404
  store i32 %51, i32* %5, align 4, !dbg !2404
  %conv204 = zext i8 %ch.0588 to i32, !dbg !2406
  %ch.0.off562 = add i8 %ch.0588, -48, !dbg !2406
  %52 = icmp ult i8 %ch.0.off562, 10, !dbg !2406
  br i1 %52, label %if.then210, label %if.end221, !dbg !2406

if.then210:                                       ; preds = %cont202
  %53 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv204, i32 48), !dbg !2407
  %54 = extractvalue { i32, i1 } %53, 0, !dbg !2407
  %55 = extractvalue { i32, i1 } %53, 1, !dbg !2407
  br i1 %55, label %ioc_bb212, label %cont213, !dbg !2407

ioc_bb212:                                        ; preds = %if.then210
  %56 = zext i8 %ch.0588 to i64, !dbg !2407
  tail call void @__ioc_report_sub_overflow(i32 1302, i32 35, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %56, i64 48, i8 13) nounwind, !dbg !2407
  br label %cont213, !dbg !2407

cont213:                                          ; preds = %if.then210, %ioc_bb212
  %57 = icmp ult i32 %54, 256, !dbg !2407
  br i1 %57, label %cont219, label %ioc_bb215, !dbg !2407

ioc_bb215:                                        ; preds = %cont213
  %58 = sext i32 %54 to i64, !dbg !2407
  tail call void @__ioc_report_conversion(i32 1302, i32 31, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @1, i32 0, i32 0), i64 %58, i8 1) nounwind, !dbg !2407
  br label %cont219, !dbg !2407

cont219:                                          ; preds = %cont213, %ioc_bb215
  tail call void @llvm.dbg.value(metadata !{i8 %conv217}, i64 0, metadata !1647), !dbg !2407
  %conv217 = trunc i32 %54 to i8, !dbg !2407
  tail call void @llvm.dbg.value(metadata !2409, i64 0, metadata !1650), !dbg !2410
  %incdec.ptr220 = getelementptr inbounds i8* %p.0590, i32 1, !dbg !2411
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr220}, i64 0, metadata !1648), !dbg !2411
  %59 = load i8* %p.0590, align 1, !dbg !2411, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %59}, i64 0, metadata !1646), !dbg !2411
  br label %while.cond.backedge, !dbg !2412

if.end221:                                        ; preds = %cont202
  %or = or i32 %conv204, 32, !dbg !2413
  %or.off = add i32 %or, -97, !dbg !2414
  %60 = icmp ult i32 %or.off, 6, !dbg !2414
  br i1 %60, label %if.then235, label %return, !dbg !2414

if.then235:                                       ; preds = %if.end221
  %61 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %or, i32 97), !dbg !2415
  %62 = extractvalue { i32, i1 } %61, 0, !dbg !2415
  %63 = extractvalue { i32, i1 } %61, 1, !dbg !2415
  br i1 %63, label %ioc_bb237, label %cont238, !dbg !2415

ioc_bb237:                                        ; preds = %if.then235
  %64 = zext i32 %or to i64, !dbg !2415
  tail call void @__ioc_report_sub_overflow(i32 1309, i32 34, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %64, i64 97, i8 13) nounwind, !dbg !2415
  br label %cont238, !dbg !2415

cont238:                                          ; preds = %if.then235, %ioc_bb237
  %65 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %62, i32 10), !dbg !2415
  %66 = extractvalue { i32, i1 } %65, 0, !dbg !2415
  %67 = extractvalue { i32, i1 } %65, 1, !dbg !2415
  br i1 %67, label %ioc_bb239, label %cont240, !dbg !2415

ioc_bb239:                                        ; preds = %cont238
  %68 = sext i32 %62 to i64, !dbg !2415
  tail call void @__ioc_report_add_overflow(i32 1309, i32 40, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %68, i64 10, i8 13) nounwind, !dbg !2415
  br label %cont240, !dbg !2415

cont240:                                          ; preds = %cont238, %ioc_bb239
  %69 = icmp ult i32 %66, 256, !dbg !2415
  br i1 %69, label %cont247, label %ioc_bb243, !dbg !2415

ioc_bb243:                                        ; preds = %cont240
  %70 = sext i32 %66 to i64, !dbg !2415
  tail call void @__ioc_report_conversion(i32 1309, i32 31, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @1, i32 0, i32 0), i64 %70, i8 1) nounwind, !dbg !2415
  br label %cont247, !dbg !2415

cont247:                                          ; preds = %cont240, %ioc_bb243
  tail call void @llvm.dbg.value(metadata !{i8 %conv245}, i64 0, metadata !1647), !dbg !2415
  %conv245 = trunc i32 %66 to i8, !dbg !2415
  tail call void @llvm.dbg.value(metadata !2409, i64 0, metadata !1650), !dbg !2417
  %incdec.ptr248 = getelementptr inbounds i8* %p.0590, i32 1, !dbg !2418
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr248}, i64 0, metadata !1648), !dbg !2418
  %71 = load i8* %p.0590, align 1, !dbg !2418, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %71}, i64 0, metadata !1646), !dbg !2418
  br label %while.cond.backedge, !dbg !2419

sw.bb250:                                         ; preds = %while.body
  %conv251 = zext i8 %ch.0588 to i32, !dbg !2420
  %ch.0.off = add i8 %ch.0588, -48, !dbg !2420
  %72 = icmp ult i8 %ch.0.off, 10, !dbg !2420
  br i1 %72, label %if.then258, label %if.end293, !dbg !2420

if.then258:                                       ; preds = %sw.bb250
  %conv259 = zext i8 %decoded.0589 to i32, !dbg !2422
  %shl265 = shl nuw nsw i32 %conv259, 4, !dbg !2422
  %73 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %shl265, i32 %conv251), !dbg !2422
  %74 = extractvalue { i32, i1 } %73, 0, !dbg !2422
  %75 = extractvalue { i32, i1 } %73, 1, !dbg !2422
  br i1 %75, label %ioc_bb267, label %cont268, !dbg !2422

ioc_bb267:                                        ; preds = %if.then258
  %76 = zext i8 %ch.0588 to i64, !dbg !2422
  %77 = zext i32 %shl265 to i64, !dbg !2422
  tail call void @__ioc_report_add_overflow(i32 1319, i32 42, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %77, i64 %76, i8 13) nounwind, !dbg !2422
  br label %cont268, !dbg !2422

cont268:                                          ; preds = %if.then258, %ioc_bb267
  %78 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %74, i32 48), !dbg !2422
  %79 = extractvalue { i32, i1 } %78, 0, !dbg !2422
  %80 = extractvalue { i32, i1 } %78, 1, !dbg !2422
  br i1 %80, label %ioc_bb269, label %cont270, !dbg !2422

ioc_bb269:                                        ; preds = %cont268
  %81 = sext i32 %74 to i64, !dbg !2422
  tail call void @__ioc_report_sub_overflow(i32 1319, i32 47, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %81, i64 48, i8 13) nounwind, !dbg !2422
  br label %cont270, !dbg !2422

cont270:                                          ; preds = %cont268, %ioc_bb269
  %82 = icmp ult i32 %79, 256, !dbg !2422
  br i1 %82, label %cont274, label %ioc_bb273, !dbg !2422

ioc_bb273:                                        ; preds = %cont270
  %83 = sext i32 %79 to i64, !dbg !2422
  tail call void @__ioc_report_conversion(i32 1319, i32 26, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @1, i32 0, i32 0), i64 %83, i8 1) nounwind, !dbg !2422
  br label %cont274, !dbg !2422

cont274:                                          ; preds = %ioc_bb273, %cont270
  %conv275 = trunc i32 %79 to i8, !dbg !2422
  tail call void @llvm.dbg.value(metadata !{i8 %conv275}, i64 0, metadata !1646), !dbg !2422
  %conv276 = and i32 %79, 255, !dbg !2424
  switch i32 %conv276, label %while.cond.backedge [
    i32 37, label %cont284
    i32 35, label %cont284
    i32 0, label %return
  ], !dbg !2424

cont284:                                          ; preds = %cont274, %cont274
  tail call void @llvm.dbg.value(metadata !1696, i64 0, metadata !1650), !dbg !2425
  %incdec.ptr285 = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2427
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr285}, i64 0, metadata !1649), !dbg !2427
  store i8 %conv275, i8* %u.0591, align 1, !dbg !2427, !tbaa !1772
  %incdec.ptr286 = getelementptr inbounds i8* %p.0590, i32 1, !dbg !2428
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr286}, i64 0, metadata !1648), !dbg !2428
  %84 = load i8* %p.0590, align 1, !dbg !2428, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %84}, i64 0, metadata !1646), !dbg !2428
  br label %while.cond.backedge, !dbg !2429

if.end293:                                        ; preds = %sw.bb250
  %or295 = or i32 %conv251, 32, !dbg !2430
  %or295.off = add i32 %or295, -97, !dbg !2431
  %85 = icmp ult i32 %or295.off, 6, !dbg !2431
  br i1 %85, label %if.then308, label %return, !dbg !2431

if.then308:                                       ; preds = %if.end293
  %conv309 = zext i8 %decoded.0589 to i32, !dbg !2432
  %shl315 = shl nuw nsw i32 %conv309, 4, !dbg !2432
  %86 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %shl315, i32 %or295), !dbg !2432
  %87 = extractvalue { i32, i1 } %86, 0, !dbg !2432
  %88 = extractvalue { i32, i1 } %86, 1, !dbg !2432
  br i1 %88, label %ioc_bb317, label %cont318, !dbg !2432

ioc_bb317:                                        ; preds = %if.then308
  %89 = zext i32 %or295 to i64, !dbg !2432
  %90 = zext i32 %shl315 to i64, !dbg !2432
  tail call void @__ioc_report_add_overflow(i32 1334, i32 42, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %90, i64 %89, i8 13) nounwind, !dbg !2432
  br label %cont318, !dbg !2432

cont318:                                          ; preds = %if.then308, %ioc_bb317
  %91 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %87, i32 97), !dbg !2432
  %92 = extractvalue { i32, i1 } %91, 0, !dbg !2432
  %93 = extractvalue { i32, i1 } %91, 1, !dbg !2432
  br i1 %93, label %ioc_bb319, label %cont320, !dbg !2432

ioc_bb319:                                        ; preds = %cont318
  %94 = sext i32 %87 to i64, !dbg !2432
  tail call void @__ioc_report_sub_overflow(i32 1334, i32 46, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %94, i64 97, i8 13) nounwind, !dbg !2432
  br label %cont320, !dbg !2432

cont320:                                          ; preds = %cont318, %ioc_bb319
  %95 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %92, i32 10), !dbg !2432
  %96 = extractvalue { i32, i1 } %95, 0, !dbg !2432
  %97 = extractvalue { i32, i1 } %95, 1, !dbg !2432
  br i1 %97, label %ioc_bb321, label %cont322, !dbg !2432

ioc_bb321:                                        ; preds = %cont320
  %98 = sext i32 %92 to i64, !dbg !2432
  tail call void @__ioc_report_add_overflow(i32 1334, i32 52, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %98, i64 10, i8 13) nounwind, !dbg !2432
  br label %cont322, !dbg !2432

cont322:                                          ; preds = %cont320, %ioc_bb321
  %99 = icmp ult i32 %96, 256, !dbg !2432
  br i1 %99, label %cont326, label %ioc_bb325, !dbg !2432

ioc_bb325:                                        ; preds = %cont322
  %100 = sext i32 %96 to i64, !dbg !2432
  tail call void @__ioc_report_conversion(i32 1334, i32 26, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @1, i32 0, i32 0), i64 %100, i8 1) nounwind, !dbg !2432
  br label %cont326, !dbg !2432

cont326:                                          ; preds = %ioc_bb325, %cont322
  %conv327 = trunc i32 %96 to i8, !dbg !2432
  tail call void @llvm.dbg.value(metadata !{i8 %conv327}, i64 0, metadata !1646), !dbg !2432
  %conv328 = and i32 %96, 255, !dbg !2434
  switch i32 %conv328, label %while.cond.backedge [
    i32 63, label %cont333
    i32 43, label %cont342
  ], !dbg !2434

cont333:                                          ; preds = %cont326
  tail call void @llvm.dbg.value(metadata !1696, i64 0, metadata !1650), !dbg !2435
  %incdec.ptr334 = getelementptr inbounds i8* %u.0591, i32 1, !dbg !2437
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr334}, i64 0, metadata !1649), !dbg !2437
  store i8 %conv327, i8* %u.0591, align 1, !dbg !2437, !tbaa !1772
  %incdec.ptr335 = getelementptr inbounds i8* %p.0590, i32 1, !dbg !2438
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr335}, i64 0, metadata !1648), !dbg !2438
  %101 = load i8* %p.0590, align 1, !dbg !2438, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %101}, i64 0, metadata !1646), !dbg !2438
  br label %while.cond.backedge, !dbg !2439

cont342:                                          ; preds = %cont326
  %102 = load i32* %5, align 4, !dbg !2440
  %103 = or i32 %102, -2147483648, !dbg !2440
  store i32 %103, i32* %5, align 4, !dbg !2440
  br label %while.cond.backedge, !dbg !2442

done:                                             ; preds = %while.cond.backedge, %if.end165, %if.end114, %if.end62, %if.end, %entry
  %u.0.lcssa = phi i8* [ %1, %entry ], [ %u.0591, %if.end ], [ %u.0591, %if.end62 ], [ %u.0591, %if.end114 ], [ %u.0591, %if.end165 ], [ %u.0.be, %while.cond.backedge ]
  %104 = load i8** %data, align 4, !dbg !2443, !tbaa !1776
  %sub.ptr.lhs.cast = ptrtoint i8* %u.0.lcssa to i32, !dbg !2443
  %sub.ptr.rhs.cast = ptrtoint i8* %104 to i32, !dbg !2443
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2443
  %105 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !2443
  br i1 %105, label %cont352, label %ioc_bb351, !dbg !2443

ioc_bb351:                                        ; preds = %done
  %106 = sext i32 %sub.ptr.sub to i64, !dbg !2443
  tail call void @__ioc_report_conversion(i32 1352, i32 18, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %106, i8 1) nounwind, !dbg !2443
  br label %cont352, !dbg !2443

cont352:                                          ; preds = %done, %ioc_bb351
  %len = getelementptr inbounds %struct.ngx_str_t* %uri, i32 0, i32 0, !dbg !2443
  store i32 %sub.ptr.sub, i32* %len, align 4, !dbg !2443, !tbaa !1771
  %107 = load i8** %uri_ext, align 4, !dbg !2444, !tbaa !1776
  %tobool355 = icmp eq i8* %107, null, !dbg !2444
  br i1 %tobool355, label %if.end368, label %if.then356, !dbg !2444

if.then356:                                       ; preds = %cont352
  %sub.ptr.rhs.cast359 = ptrtoint i8* %107 to i32, !dbg !2445
  %sub.ptr.sub360 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast359, !dbg !2445
  %108 = icmp sgt i32 %sub.ptr.sub360, -1, !dbg !2445
  br i1 %108, label %cont363, label %ioc_bb362, !dbg !2445

ioc_bb362:                                        ; preds = %if.then356
  %109 = sext i32 %sub.ptr.sub360 to i64, !dbg !2445
  tail call void @__ioc_report_conversion(i32 1354, i32 22, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %109, i8 1) nounwind, !dbg !2445
  %.pre = load i8** %uri_ext, align 4, !dbg !2447, !tbaa !1776
  br label %cont363, !dbg !2445

cont363:                                          ; preds = %ioc_bb362, %if.then356
  %110 = phi i8* [ %.pre, %ioc_bb362 ], [ %107, %if.then356 ]
  %len364 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 24, i32 0, !dbg !2445
  store i32 %sub.ptr.sub360, i32* %len364, align 4, !dbg !2445, !tbaa !1771
  %data367 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 24, i32 1, !dbg !2447
  store i8* %110, i8** %data367, align 4, !dbg !2447, !tbaa !1776
  br label %if.end368, !dbg !2448

if.end368:                                        ; preds = %cont352, %cont363
  store i8* null, i8** %uri_ext, align 4, !dbg !2449, !tbaa !1776
  br label %return, !dbg !2450

while.cond370:                                    ; preds = %while.cond370.preheader, %while.body374
  %p.1 = phi i8* [ %incdec.ptr375, %while.body374 ], [ %p.0590, %while.cond370.preheader ]
  %cmp372 = icmp ult i8* %p.1, %14, !dbg !2312
  br i1 %cmp372, label %while.body374, label %while.end395, !dbg !2312

while.body374:                                    ; preds = %while.cond370
  %incdec.ptr375 = getelementptr inbounds i8* %p.1, i32 1, !dbg !2451
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr375}, i64 0, metadata !1648), !dbg !2451
  %111 = load i8* %p.1, align 1, !dbg !2451, !tbaa !1772
  %cmp377 = icmp eq i8 %111, 35, !dbg !2451
  br i1 %cmp377, label %if.end380, label %while.cond370, !dbg !2451

if.end380:                                        ; preds = %while.body374
  %sub.ptr.lhs.cast383 = ptrtoint i8* %p.1 to i32, !dbg !2453
  %sub.ptr.rhs.cast384 = ptrtoint i8* %p.0590 to i32, !dbg !2453
  %sub.ptr.sub385 = sub i32 %sub.ptr.lhs.cast383, %sub.ptr.rhs.cast384, !dbg !2453
  %112 = icmp sgt i32 %sub.ptr.sub385, -1, !dbg !2453
  br i1 %112, label %cont388, label %ioc_bb387, !dbg !2453

ioc_bb387:                                        ; preds = %if.end380
  %113 = sext i32 %sub.ptr.sub385 to i64, !dbg !2453
  tail call void @__ioc_report_conversion(i32 1364, i32 21, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %113, i8 1) nounwind, !dbg !2453
  %.pre612 = load i8** %args_start, align 4, !dbg !2454, !tbaa !1776
  br label %cont388, !dbg !2453

cont388:                                          ; preds = %ioc_bb387, %if.end380
  %114 = phi i8* [ %.pre612, %ioc_bb387 ], [ %p.0590, %if.end380 ]
  %len390 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 23, i32 0, !dbg !2453
  store i32 %sub.ptr.sub385, i32* %len390, align 4, !dbg !2453, !tbaa !1771
  %data393 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 23, i32 1, !dbg !2454
  store i8* %114, i8** %data393, align 4, !dbg !2454, !tbaa !1776
  store i8* null, i8** %args_start, align 4, !dbg !2455, !tbaa !1776
  br label %while.end395, !dbg !2456

while.end395:                                     ; preds = %while.cond370, %cont388
  %115 = load i8** %data, align 4, !dbg !2457, !tbaa !1776
  %sub.ptr.lhs.cast398 = ptrtoint i8* %u.0591 to i32, !dbg !2457
  %sub.ptr.rhs.cast399 = ptrtoint i8* %115 to i32, !dbg !2457
  %sub.ptr.sub400 = sub i32 %sub.ptr.lhs.cast398, %sub.ptr.rhs.cast399, !dbg !2457
  %116 = icmp sgt i32 %sub.ptr.sub400, -1, !dbg !2457
  br i1 %116, label %cont403, label %ioc_bb402, !dbg !2457

ioc_bb402:                                        ; preds = %while.end395
  %117 = sext i32 %sub.ptr.sub400 to i64, !dbg !2457
  tail call void @__ioc_report_conversion(i32 1369, i32 18, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %117, i8 1) nounwind, !dbg !2457
  br label %cont403, !dbg !2457

cont403:                                          ; preds = %while.end395, %ioc_bb402
  %len405 = getelementptr inbounds %struct.ngx_str_t* %uri, i32 0, i32 0, !dbg !2457
  store i32 %sub.ptr.sub400, i32* %len405, align 4, !dbg !2457, !tbaa !1771
  %118 = load i8** %uri_ext, align 4, !dbg !2458, !tbaa !1776
  %tobool407 = icmp eq i8* %118, null, !dbg !2458
  br i1 %tobool407, label %if.end421, label %if.then408, !dbg !2458

if.then408:                                       ; preds = %cont403
  %sub.ptr.rhs.cast411 = ptrtoint i8* %118 to i32, !dbg !2459
  %sub.ptr.sub412 = sub i32 %sub.ptr.lhs.cast398, %sub.ptr.rhs.cast411, !dbg !2459
  %119 = icmp sgt i32 %sub.ptr.sub412, -1, !dbg !2459
  br i1 %119, label %cont415, label %ioc_bb414, !dbg !2459

ioc_bb414:                                        ; preds = %if.then408
  %120 = sext i32 %sub.ptr.sub412 to i64, !dbg !2459
  tail call void @__ioc_report_conversion(i32 1371, i32 22, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %120, i8 1) nounwind, !dbg !2459
  %.pre613 = load i8** %uri_ext, align 4, !dbg !2461, !tbaa !1776
  br label %cont415, !dbg !2459

cont415:                                          ; preds = %ioc_bb414, %if.then408
  %121 = phi i8* [ %.pre613, %ioc_bb414 ], [ %118, %if.then408 ]
  %len417 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 24, i32 0, !dbg !2459
  store i32 %sub.ptr.sub412, i32* %len417, align 4, !dbg !2459, !tbaa !1771
  %data420 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 24, i32 1, !dbg !2461
  store i8* %121, i8** %data420, align 4, !dbg !2461, !tbaa !1776
  br label %if.end421, !dbg !2462

if.end421:                                        ; preds = %cont403, %cont415
  store i8* null, i8** %uri_ext, align 4, !dbg !2463, !tbaa !1776
  br label %return, !dbg !2464

return:                                           ; preds = %if.end293, %cont274, %if.end221, %for.cond, %if.end421, %if.end368
  %retval.0 = phi i32 [ 0, %if.end368 ], [ 0, %if.end421 ], [ 11, %for.cond ], [ 11, %if.end221 ], [ 11, %cont274 ], [ 11, %if.end293 ]
  ret i32 %retval.0, !dbg !2465
}

define i32 @ngx_http_parse_status_line(%struct.ngx_http_request_s* nocapture %r, %struct.ngx_buf_s* nocapture %b, %struct.ngx_http_status_t* nocapture %status) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1675), !dbg !2466
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_buf_s* %b}, i64 0, metadata !1676), !dbg !2466
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_status_t* %status}, i64 0, metadata !1677), !dbg !2466
  %state1 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 60, !dbg !2467
  %0 = load i32* %state1, align 4, !dbg !2467, !tbaa !1771
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !1681), !dbg !2467
  %pos = getelementptr inbounds %struct.ngx_buf_s* %b, i32 0, i32 0, !dbg !2468
  %1 = load i8** %pos, align 4, !dbg !2468, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !1680), !dbg !2468
  %last = getelementptr inbounds %struct.ngx_buf_s* %b, i32 0, i32 1, !dbg !2468
  %2 = load i8** %last, align 4, !dbg !2468, !tbaa !1776
  %cmp325 = icmp ult i8* %1, %2, !dbg !2468
  br i1 %cmp325, label %for.body.lr.ph, label %for.end, !dbg !2468

for.body.lr.ph:                                   ; preds = %entry
  %3 = getelementptr %struct.ngx_http_request_s* %r, i32 0, i32 81, i32 0, !dbg !2470
  %4 = bitcast i8* %3 to i32*, !dbg !2470
  %code = getelementptr inbounds %struct.ngx_http_status_t* %status, i32 0, i32 1, !dbg !2474
  %count = getelementptr inbounds %struct.ngx_http_status_t* %status, i32 0, i32 2, !dbg !2476
  %start = getelementptr inbounds %struct.ngx_http_status_t* %status, i32 0, i32 3, !dbg !2477
  br label %for.body, !dbg !2468

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %state.0328 = phi i32 [ %0, %for.body.lr.ph ], [ %state.1, %for.inc ]
  %p.0326 = phi i8* [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %5 = load i8* %p.0326, align 1, !dbg !2479, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %5}, i64 0, metadata !1678), !dbg !2479
  switch i32 %state.0328, label %for.inc [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb14
    i32 3, label %sw.bb23
    i32 4, label %sw.bb32
    i32 5, label %sw.bb41
    i32 6, label %sw.bb57
    i32 7, label %sw.bb91
    i32 8, label %sw.bb113
    i32 9, label %sw.bb149
    i32 10, label %sw.bb188
    i32 11, label %sw.bb204
    i32 12, label %sw.bb211
  ], !dbg !2480

sw.bb:                                            ; preds = %for.body
  %cond255 = icmp eq i8 %5, 72, !dbg !2481
  br i1 %cond255, label %for.inc, label %return, !dbg !2481

sw.bb5:                                           ; preds = %for.body
  %cond254 = icmp eq i8 %5, 84, !dbg !2483
  br i1 %cond254, label %for.inc, label %return, !dbg !2483

sw.bb14:                                          ; preds = %for.body
  %cond253 = icmp eq i8 %5, 84, !dbg !2485
  br i1 %cond253, label %for.inc, label %return, !dbg !2485

sw.bb23:                                          ; preds = %for.body
  %cond252 = icmp eq i8 %5, 80, !dbg !2487
  br i1 %cond252, label %for.inc, label %return, !dbg !2487

sw.bb32:                                          ; preds = %for.body
  %cond251 = icmp eq i8 %5, 47, !dbg !2489
  br i1 %cond251, label %for.inc, label %return, !dbg !2489

sw.bb41:                                          ; preds = %for.body
  %.off315 = add i8 %5, -49, !dbg !2491
  %6 = icmp ugt i8 %.off315, 8, !dbg !2491
  br i1 %6, label %return, label %if.end, !dbg !2491

if.end:                                           ; preds = %sw.bb41
  %conv42 = zext i8 %5 to i32, !dbg !2491
  %7 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv42, i32 48), !dbg !2470
  %8 = extractvalue { i32, i1 } %7, 0, !dbg !2470
  %9 = extractvalue { i32, i1 } %7, 1, !dbg !2470
  br i1 %9, label %ioc_bb51, label %cont52, !dbg !2470

ioc_bb51:                                         ; preds = %if.end
  %10 = zext i8 %5 to i64, !dbg !2470
  tail call void @__ioc_report_sub_overflow(i32 1459, i32 31, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %10, i64 48, i8 13) nounwind, !dbg !2470
  br label %cont52, !dbg !2470

cont52:                                           ; preds = %if.end, %ioc_bb51
  %11 = icmp sgt i32 %8, -1, !dbg !2470
  br i1 %11, label %cont54, label %ioc_bb53, !dbg !2470

ioc_bb53:                                         ; preds = %cont52
  %12 = sext i32 %8 to i64, !dbg !2470
  tail call void @__ioc_report_conversion(i32 1459, i32 27, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %12, i8 1) nounwind, !dbg !2470
  br label %cont54, !dbg !2470

cont54:                                           ; preds = %cont52, %ioc_bb53
  %13 = shl i32 %8, 16, !dbg !2470
  %14 = load i32* %4, align 4, !dbg !2470
  %15 = and i32 %14, 65535, !dbg !2470
  %16 = or i32 %15, %13, !dbg !2470
  store i32 %16, i32* %4, align 4, !dbg !2470
  tail call void @llvm.dbg.value(metadata !2209, i64 0, metadata !1681), !dbg !2492
  br label %for.inc, !dbg !2493

sw.bb57:                                          ; preds = %for.body
  %conv58 = zext i8 %5 to i32, !dbg !2494
  %cmp59 = icmp eq i8 %5, 46, !dbg !2494
  br i1 %cmp59, label %for.inc, label %if.end64, !dbg !2494

if.end64:                                         ; preds = %sw.bb57
  %.off314 = add i8 %5, -48, !dbg !2496
  %17 = icmp ugt i8 %.off314, 9, !dbg !2496
  br i1 %17, label %return, label %if.end75, !dbg !2496

if.end75:                                         ; preds = %if.end64
  %18 = load i32* %4, align 4, !dbg !2497
  %19 = lshr i32 %18, 16, !dbg !2497
  %20 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %19, i32 10), !dbg !2497
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !2497
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !2497
  br i1 %22, label %ioc_bb79, label %cont80, !dbg !2497

ioc_bb79:                                         ; preds = %if.end75
  %23 = zext i32 %19 to i64, !dbg !2497
  tail call void @__ioc_report_mul_overflow(i32 1473, i32 46, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %23, i64 10, i8 13) nounwind, !dbg !2497
  br label %cont80, !dbg !2497

cont80:                                           ; preds = %if.end75, %ioc_bb79
  %24 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %21, i32 %conv58), !dbg !2497
  %25 = extractvalue { i32, i1 } %24, 0, !dbg !2497
  %26 = extractvalue { i32, i1 } %24, 1, !dbg !2497
  br i1 %26, label %ioc_bb82, label %cont83, !dbg !2497

ioc_bb82:                                         ; preds = %cont80
  %27 = zext i8 %5 to i64, !dbg !2497
  %28 = zext i32 %21 to i64, !dbg !2497
  tail call void @__ioc_report_add_overflow(i32 1473, i32 51, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %28, i64 %27, i8 13) nounwind, !dbg !2497
  br label %cont83, !dbg !2497

cont83:                                           ; preds = %cont80, %ioc_bb82
  %29 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %25, i32 48), !dbg !2497
  %30 = extractvalue { i32, i1 } %29, 0, !dbg !2497
  %31 = extractvalue { i32, i1 } %29, 1, !dbg !2497
  br i1 %31, label %ioc_bb84, label %cont85, !dbg !2497

ioc_bb84:                                         ; preds = %cont83
  %32 = sext i32 %25 to i64, !dbg !2497
  tail call void @__ioc_report_sub_overflow(i32 1473, i32 56, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %32, i64 48, i8 13) nounwind, !dbg !2497
  br label %cont85, !dbg !2497

cont85:                                           ; preds = %cont83, %ioc_bb84
  %33 = icmp sgt i32 %30, -1, !dbg !2497
  br i1 %33, label %cont88, label %ioc_bb87, !dbg !2497

ioc_bb87:                                         ; preds = %cont85
  %34 = sext i32 %30 to i64, !dbg !2497
  tail call void @__ioc_report_conversion(i32 1473, i32 27, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %34, i8 1) nounwind, !dbg !2497
  br label %cont88, !dbg !2497

cont88:                                           ; preds = %cont85, %ioc_bb87
  %35 = shl i32 %30, 16, !dbg !2497
  %36 = load i32* %4, align 4, !dbg !2497
  %37 = and i32 %36, 65535, !dbg !2497
  %38 = or i32 %37, %35, !dbg !2497
  store i32 %38, i32* %4, align 4, !dbg !2497
  br label %for.inc, !dbg !2498

sw.bb91:                                          ; preds = %for.body
  %.off313 = add i8 %5, -48, !dbg !2499
  %39 = icmp ugt i8 %.off313, 9, !dbg !2499
  br i1 %39, label %return, label %if.end102, !dbg !2499

if.end102:                                        ; preds = %sw.bb91
  %conv92 = zext i8 %5 to i32, !dbg !2499
  %40 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv92, i32 48), !dbg !2501
  %41 = extractvalue { i32, i1 } %40, 0, !dbg !2501
  %42 = extractvalue { i32, i1 } %40, 1, !dbg !2501
  br i1 %42, label %ioc_bb104, label %cont105, !dbg !2501

ioc_bb104:                                        ; preds = %if.end102
  %43 = zext i8 %5 to i64, !dbg !2501
  tail call void @__ioc_report_sub_overflow(i32 1482, i32 31, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %43, i64 48, i8 13) nounwind, !dbg !2501
  br label %cont105, !dbg !2501

cont105:                                          ; preds = %if.end102, %ioc_bb104
  %44 = icmp sgt i32 %41, -1, !dbg !2501
  br i1 %44, label %cont108, label %ioc_bb107, !dbg !2501

ioc_bb107:                                        ; preds = %cont105
  %45 = sext i32 %41 to i64, !dbg !2501
  tail call void @__ioc_report_conversion(i32 1482, i32 27, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %45, i8 1) nounwind, !dbg !2501
  br label %cont108, !dbg !2501

cont108:                                          ; preds = %cont105, %ioc_bb107
  %bf.value109 = and i32 %41, 65535, !dbg !2501
  %46 = load i32* %4, align 4, !dbg !2501
  %47 = and i32 %46, -65536, !dbg !2501
  %48 = or i32 %47, %bf.value109, !dbg !2501
  store i32 %48, i32* %4, align 4, !dbg !2501
  tail call void @llvm.dbg.value(metadata !1938, i64 0, metadata !1681), !dbg !2502
  br label %for.inc, !dbg !2503

sw.bb113:                                         ; preds = %for.body
  %conv114 = zext i8 %5 to i32, !dbg !2504
  %cmp115 = icmp eq i8 %5, 32, !dbg !2504
  br i1 %cmp115, label %for.inc, label %if.end120, !dbg !2504

if.end120:                                        ; preds = %sw.bb113
  %.off312 = add i8 %5, -48, !dbg !2506
  %49 = icmp ugt i8 %.off312, 9, !dbg !2506
  br i1 %49, label %return, label %if.end131, !dbg !2506

if.end131:                                        ; preds = %if.end120
  %50 = load i32* %4, align 4, !dbg !2507
  %bf.clear133 = and i32 %50, 65535, !dbg !2507
  %51 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %bf.clear133, i32 10), !dbg !2507
  %52 = extractvalue { i32, i1 } %51, 0, !dbg !2507
  %53 = extractvalue { i32, i1 } %51, 1, !dbg !2507
  br i1 %53, label %ioc_bb137, label %cont138, !dbg !2507

ioc_bb137:                                        ; preds = %if.end131
  %54 = zext i32 %bf.clear133 to i64, !dbg !2507
  tail call void @__ioc_report_mul_overflow(i32 1496, i32 46, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %54, i64 10, i8 13) nounwind, !dbg !2507
  br label %cont138, !dbg !2507

cont138:                                          ; preds = %if.end131, %ioc_bb137
  %55 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %52, i32 %conv114), !dbg !2507
  %56 = extractvalue { i32, i1 } %55, 0, !dbg !2507
  %57 = extractvalue { i32, i1 } %55, 1, !dbg !2507
  br i1 %57, label %ioc_bb140, label %cont141, !dbg !2507

ioc_bb140:                                        ; preds = %cont138
  %58 = zext i8 %5 to i64, !dbg !2507
  %59 = zext i32 %52 to i64, !dbg !2507
  tail call void @__ioc_report_add_overflow(i32 1496, i32 51, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %59, i64 %58, i8 13) nounwind, !dbg !2507
  br label %cont141, !dbg !2507

cont141:                                          ; preds = %cont138, %ioc_bb140
  %60 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %56, i32 48), !dbg !2507
  %61 = extractvalue { i32, i1 } %60, 0, !dbg !2507
  %62 = extractvalue { i32, i1 } %60, 1, !dbg !2507
  br i1 %62, label %ioc_bb142, label %cont143, !dbg !2507

ioc_bb142:                                        ; preds = %cont141
  %63 = sext i32 %56 to i64, !dbg !2507
  tail call void @__ioc_report_sub_overflow(i32 1496, i32 56, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %63, i64 48, i8 13) nounwind, !dbg !2507
  br label %cont143, !dbg !2507

cont143:                                          ; preds = %cont141, %ioc_bb142
  %64 = icmp sgt i32 %61, -1, !dbg !2507
  br i1 %64, label %cont146, label %ioc_bb145, !dbg !2507

ioc_bb145:                                        ; preds = %cont143
  %65 = sext i32 %61 to i64, !dbg !2507
  tail call void @__ioc_report_conversion(i32 1496, i32 27, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %65, i8 1) nounwind, !dbg !2507
  br label %cont146, !dbg !2507

cont146:                                          ; preds = %cont143, %ioc_bb145
  %bf.value147 = and i32 %61, 65535, !dbg !2507
  %66 = load i32* %4, align 4, !dbg !2507
  %67 = and i32 %66, -65536, !dbg !2507
  %68 = or i32 %67, %bf.value147, !dbg !2507
  store i32 %68, i32* %4, align 4, !dbg !2507
  br label %for.inc, !dbg !2508

sw.bb149:                                         ; preds = %for.body
  %conv150 = zext i8 %5 to i32, !dbg !2509
  %cmp151 = icmp eq i8 %5, 32, !dbg !2509
  br i1 %cmp151, label %for.inc, label %if.end154, !dbg !2509

if.end154:                                        ; preds = %sw.bb149
  %.off = add i8 %5, -48, !dbg !2510
  %69 = icmp ugt i8 %.off, 9, !dbg !2510
  br i1 %69, label %return, label %if.end165, !dbg !2510

if.end165:                                        ; preds = %if.end154
  %70 = load i32* %code, align 4, !dbg !2474, !tbaa !1771
  %71 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %70, i32 10), !dbg !2474
  %72 = extractvalue { i32, i1 } %71, 0, !dbg !2474
  %73 = extractvalue { i32, i1 } %71, 1, !dbg !2474
  br i1 %73, label %ioc_bb168, label %cont169, !dbg !2474

ioc_bb168:                                        ; preds = %if.end165
  %74 = zext i32 %70 to i64, !dbg !2474
  tail call void @__ioc_report_mul_overflow(i32 1508, i32 41, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %74, i64 10, i8 5) nounwind, !dbg !2474
  br label %cont169, !dbg !2474

cont169:                                          ; preds = %if.end165, %ioc_bb168
  %75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %72, i32 %conv150), !dbg !2474
  %76 = extractvalue { i32, i1 } %75, 0, !dbg !2474
  %77 = extractvalue { i32, i1 } %75, 1, !dbg !2474
  br i1 %77, label %ioc_bb171, label %cont174, !dbg !2474

ioc_bb171:                                        ; preds = %cont169
  %78 = zext i8 %5 to i64, !dbg !2474
  %79 = zext i32 %72 to i64, !dbg !2474
  tail call void @__ioc_report_add_overflow(i32 1508, i32 46, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %79, i64 %78, i8 5) nounwind, !dbg !2474
  br label %cont174, !dbg !2474

cont174:                                          ; preds = %ioc_bb171, %cont169
  %80 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %76, i32 48), !dbg !2474
  %81 = extractvalue { i32, i1 } %80, 0, !dbg !2474
  %82 = extractvalue { i32, i1 } %80, 1, !dbg !2474
  br i1 %82, label %ioc_bb175, label %cont176, !dbg !2474

ioc_bb175:                                        ; preds = %cont174
  %83 = zext i32 %76 to i64, !dbg !2474
  tail call void @__ioc_report_sub_overflow(i32 1508, i32 51, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %83, i64 48, i8 5) nounwind, !dbg !2474
  br label %cont176, !dbg !2474

cont176:                                          ; preds = %cont174, %ioc_bb175
  store i32 %81, i32* %code, align 4, !dbg !2474, !tbaa !1771
  %84 = load i32* %count, align 4, !dbg !2476, !tbaa !1771
  %85 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %84, i32 1), !dbg !2476
  %86 = extractvalue { i32, i1 } %85, 0, !dbg !2476
  %87 = extractvalue { i32, i1 } %85, 1, !dbg !2476
  br i1 %87, label %ioc_bb178, label %cont179, !dbg !2476

ioc_bb178:                                        ; preds = %cont176
  %88 = zext i32 %84 to i64, !dbg !2476
  tail call void @__ioc_report_add_overflow(i32 1509, i32 13, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %88, i64 1, i8 5) nounwind, !dbg !2476
  br label %cont179, !dbg !2476

cont179:                                          ; preds = %cont176, %ioc_bb178
  store i32 %86, i32* %count, align 4, !dbg !2476, !tbaa !1771
  %cmp182 = icmp eq i32 %86, 3, !dbg !2476
  br i1 %cmp182, label %cont186, label %for.inc, !dbg !2476

cont186:                                          ; preds = %cont179
  tail call void @llvm.dbg.value(metadata !2511, i64 0, metadata !1681), !dbg !2512
  %add.ptr = getelementptr inbounds i8* %p.0326, i32 -2, !dbg !2477
  store i8* %add.ptr, i8** %start, align 4, !dbg !2477, !tbaa !1776
  br label %for.inc, !dbg !2513

sw.bb188:                                         ; preds = %for.body
  %conv189 = zext i8 %5 to i32, !dbg !2514
  switch i32 %conv189, label %return [
    i32 32, label %for.inc
    i32 46, label %for.inc
    i32 13, label %cont198
    i32 10, label %done.loopexit
  ], !dbg !2514

cont198:                                          ; preds = %sw.bb188
  tail call void @llvm.dbg.value(metadata !1901, i64 0, metadata !1681), !dbg !2516
  br label %for.inc, !dbg !2519

sw.bb204:                                         ; preds = %for.body
  %conv205 = zext i8 %5 to i32, !dbg !2520
  switch i32 %conv205, label %for.inc [
    i32 13, label %cont208
    i32 10, label %done.loopexit
  ], !dbg !2520

cont208:                                          ; preds = %sw.bb204
  tail call void @llvm.dbg.value(metadata !1901, i64 0, metadata !1681), !dbg !2522
  br label %for.inc, !dbg !2525

sw.bb211:                                         ; preds = %for.body
  %add.ptr212 = getelementptr inbounds i8* %p.0326, i32 -1, !dbg !2526
  %end = getelementptr inbounds %struct.ngx_http_status_t* %status, i32 0, i32 4, !dbg !2526
  store i8* %add.ptr212, i8** %end, align 4, !dbg !2526, !tbaa !1776
  %cond = icmp eq i8 %5, 10, !dbg !2528
  br i1 %cond, label %done, label %return, !dbg !2528

for.inc:                                          ; preds = %cont179, %sw.bb188, %sw.bb188, %sw.bb113, %sw.bb57, %sw.bb32, %sw.bb23, %sw.bb14, %sw.bb5, %sw.bb, %cont54, %cont88, %cont108, %cont146, %for.body, %sw.bb149, %cont186, %cont198, %sw.bb204, %cont208
  %state.1 = phi i32 [ %state.0328, %for.body ], [ 11, %sw.bb204 ], [ 12, %cont208 ], [ 12, %cont198 ], [ 9, %sw.bb149 ], [ 10, %cont186 ], [ 8, %cont146 ], [ 8, %cont108 ], [ 6, %cont88 ], [ 6, %cont54 ], [ 1, %sw.bb ], [ 2, %sw.bb5 ], [ 3, %sw.bb14 ], [ 4, %sw.bb23 ], [ 5, %sw.bb32 ], [ 7, %sw.bb57 ], [ 9, %sw.bb113 ], [ 11, %sw.bb188 ], [ 11, %sw.bb188 ], [ 9, %cont179 ]
  %incdec.ptr = getelementptr inbounds i8* %p.0326, i32 1, !dbg !2468
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1680), !dbg !2468
  %89 = load i8** %last, align 4, !dbg !2468, !tbaa !1776
  %cmp = icmp ult i8* %incdec.ptr, %89, !dbg !2468
  br i1 %cmp, label %for.body, label %for.end, !dbg !2468

for.end:                                          ; preds = %for.inc, %entry
  %state.0.lcssa = phi i32 [ %0, %entry ], [ %state.1, %for.inc ]
  %p.0.lcssa = phi i8* [ %1, %entry ], [ %incdec.ptr, %for.inc ]
  store i8* %p.0.lcssa, i8** %pos, align 4, !dbg !2529, !tbaa !1776
  store i32 %state.0.lcssa, i32* %state1, align 4, !dbg !2530, !tbaa !1771
  br label %return, !dbg !2531

done.loopexit:                                    ; preds = %sw.bb188, %sw.bb204
  %end225.pre = getelementptr inbounds %struct.ngx_http_status_t* %status, i32 0, i32 4, !dbg !2532
  br label %done

done:                                             ; preds = %done.loopexit, %sw.bb211
  %end225.pre-phi = phi i8** [ %end225.pre, %done.loopexit ], [ %end, %sw.bb211 ], !dbg !2532
  %add.ptr223 = getelementptr inbounds i8* %p.0326, i32 1, !dbg !2533
  store i8* %add.ptr223, i8** %pos, align 4, !dbg !2533, !tbaa !1776
  %90 = load i8** %end225.pre-phi, align 4, !dbg !2532, !tbaa !1776
  %cmp226 = icmp eq i8* %90, null, !dbg !2532
  br i1 %cmp226, label %if.then228, label %if.end230, !dbg !2532

if.then228:                                       ; preds = %done
  store i8* %p.0326, i8** %end225.pre-phi, align 4, !dbg !2534, !tbaa !1776
  br label %if.end230, !dbg !2536

if.end230:                                        ; preds = %if.then228, %done
  %91 = load i32* %4, align 4, !dbg !2537
  %92 = lshr i32 %91, 16, !dbg !2537
  %93 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %92, i32 1000), !dbg !2537
  %94 = extractvalue { i32, i1 } %93, 0, !dbg !2537
  %95 = extractvalue { i32, i1 } %93, 1, !dbg !2537
  br i1 %95, label %ioc_bb236, label %cont237, !dbg !2537

ioc_bb236:                                        ; preds = %if.end230
  %96 = zext i32 %92 to i64, !dbg !2537
  tail call void @__ioc_report_mul_overflow(i32 1577, i32 47, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %96, i64 1000, i8 13) nounwind, !dbg !2537
  %.pre = load i32* %4, align 4, !dbg !2537
  br label %cont237, !dbg !2537

cont237:                                          ; preds = %if.end230, %ioc_bb236
  %97 = phi i32 [ %91, %if.end230 ], [ %.pre, %ioc_bb236 ]
  %bf.clear239 = and i32 %97, 65535, !dbg !2537
  %98 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %94, i32 %bf.clear239), !dbg !2537
  %99 = extractvalue { i32, i1 } %98, 0, !dbg !2537
  %100 = extractvalue { i32, i1 } %98, 1, !dbg !2537
  br i1 %100, label %ioc_bb243, label %cont244, !dbg !2537

ioc_bb243:                                        ; preds = %cont237
  %101 = zext i32 %bf.clear239 to i64, !dbg !2537
  %102 = zext i32 %94 to i64, !dbg !2537
  tail call void @__ioc_report_add_overflow(i32 1577, i32 54, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %102, i64 %101, i8 13) nounwind, !dbg !2537
  br label %cont244, !dbg !2537

cont244:                                          ; preds = %cont237, %ioc_bb243
  %103 = icmp sgt i32 %99, -1, !dbg !2537
  br i1 %103, label %cont247, label %ioc_bb246, !dbg !2537

ioc_bb246:                                        ; preds = %cont244
  %104 = sext i32 %99 to i64, !dbg !2537
  tail call void @__ioc_report_conversion(i32 1577, i32 28, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %104, i8 1) nounwind, !dbg !2537
  br label %cont247, !dbg !2537

cont247:                                          ; preds = %ioc_bb246, %cont244
  %http_version = getelementptr inbounds %struct.ngx_http_status_t* %status, i32 0, i32 0, !dbg !2537
  store i32 %99, i32* %http_version, align 4, !dbg !2537, !tbaa !1771
  store i32 0, i32* %state1, align 4, !dbg !2538, !tbaa !1771
  br label %return, !dbg !2539

return:                                           ; preds = %sw.bb188, %if.end154, %if.end120, %sw.bb91, %if.end64, %sw.bb41, %sw.bb32, %sw.bb23, %sw.bb14, %sw.bb5, %sw.bb, %sw.bb211, %cont247, %for.end
  %retval.0 = phi i32 [ 0, %cont247 ], [ -2, %for.end ], [ -1, %sw.bb211 ], [ -1, %sw.bb ], [ -1, %sw.bb5 ], [ -1, %sw.bb14 ], [ -1, %sw.bb23 ], [ -1, %sw.bb32 ], [ -1, %sw.bb41 ], [ -1, %if.end64 ], [ -1, %sw.bb91 ], [ -1, %if.end120 ], [ -1, %if.end154 ], [ -1, %sw.bb188 ]
  ret i32 %retval.0, !dbg !2540
}

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

define i32 @ngx_http_parse_unsafe_uri(%struct.ngx_http_request_s* nocapture %r, %struct.ngx_str_t* %uri, %struct.ngx_str_t* nocapture %args, i32* nocapture %flags) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1704), !dbg !2541
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %uri}, i64 0, metadata !1705), !dbg !2541
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %args}, i64 0, metadata !1706), !dbg !2541
  tail call void @llvm.dbg.value(metadata !{i32* %flags}, i64 0, metadata !1707), !dbg !2541
  %len1 = getelementptr inbounds %struct.ngx_str_t* %uri, i32 0, i32 0, !dbg !2542
  %0 = load i32* %len1, align 4, !dbg !2542, !tbaa !1771
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !1711), !dbg !2542
  %data = getelementptr inbounds %struct.ngx_str_t* %uri, i32 0, i32 1, !dbg !2543
  %1 = load i8** %data, align 4, !dbg !2543, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !1710), !dbg !2543
  %cmp = icmp eq i32 %0, 0, !dbg !2544
  br i1 %cmp, label %cont87, label %lor.lhs.false, !dbg !2544

lor.lhs.false:                                    ; preds = %entry
  %2 = load i8* %1, align 1, !dbg !2544, !tbaa !1772
  switch i8 %2, label %for.body [
    i8 63, label %cont87
    i8 46, label %cont9
  ], !dbg !2544

cont9:                                            ; preds = %lor.lhs.false
  %cmp10 = icmp eq i32 %0, 3, !dbg !2545
  br i1 %cmp10, label %land.lhs.true12, label %for.body, !dbg !2545

land.lhs.true12:                                  ; preds = %cont9
  %arrayidx13 = getelementptr inbounds i8* %1, i32 1, !dbg !2545
  %3 = load i8* %arrayidx13, align 1, !dbg !2545, !tbaa !1772
  %cmp15 = icmp eq i8 %3, 46, !dbg !2545
  br i1 %cmp15, label %land.lhs.true17, label %for.body, !dbg !2545

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %arrayidx18 = getelementptr inbounds i8* %1, i32 2, !dbg !2545
  %4 = load i8* %arrayidx18, align 1, !dbg !2545, !tbaa !1772
  %cmp20 = icmp eq i8 %4, 47, !dbg !2545
  br i1 %cmp20, label %cont87, label %for.body, !dbg !2545

for.body:                                         ; preds = %land.lhs.true17, %land.lhs.true12, %cont9, %lor.lhs.false, %for.cond.backedge.for.body_crit_edge
  %5 = phi i8 [ %.pre, %for.cond.backedge.for.body_crit_edge ], [ %2, %lor.lhs.false ], [ 46, %cont9 ], [ %2, %land.lhs.true12 ], [ %2, %land.lhs.true17 ]
  %len.0133 = phi i32 [ %25, %for.cond.backedge.for.body_crit_edge ], [ %0, %lor.lhs.false ], [ %0, %cont9 ], [ 3, %land.lhs.true12 ], [ 3, %land.lhs.true17 ]
  %p.0132 = phi i8* [ %incdec.ptr, %for.cond.backedge.for.body_crit_edge ], [ %1, %lor.lhs.false ], [ %1, %cont9 ], [ %1, %land.lhs.true12 ], [ %1, %land.lhs.true17 ]
  %incdec.ptr = getelementptr inbounds i8* %p.0132, i32 1, !dbg !2546
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1710), !dbg !2546
  tail call void @llvm.dbg.value(metadata !{i8 %5}, i64 0, metadata !1708), !dbg !2546
  %conv24 = zext i8 %5 to i32, !dbg !2549
  %shr127 = lshr i32 %conv24, 5, !dbg !2549
  %arrayidx27 = getelementptr inbounds [8 x i32]* @usual, i32 0, i32 %shr127, !dbg !2549
  %6 = load i32* %arrayidx27, align 4, !dbg !2549, !tbaa !1771
  %and = and i32 %conv24, 31, !dbg !2549
  %7 = xor i32 %and, 31, !dbg !2549
  %shl.check = lshr i32 1, %7, !dbg !2549
  %8 = icmp eq i32 %shl.check, 0, !dbg !2549
  br i1 %8, label %cont32, label %ioc_bb31, !dbg !2549

ioc_bb31:                                         ; preds = %for.body
  %9 = zext i32 %and to i64, !dbg !2549
  tail call void @__ioc_report_shl_strict(i32 1598, i32 29, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @4, i32 0, i32 0), i64 1, i64 %9, i8 13) nounwind, !dbg !2549
  br label %cont32, !dbg !2549

cont32:                                           ; preds = %ioc_bb31, %for.body
  %shl = shl i32 1, %and, !dbg !2549
  %10 = icmp sgt i32 %shl, -1, !dbg !2549
  br i1 %10, label %cont34, label %ioc_bb33, !dbg !2549

ioc_bb33:                                         ; preds = %cont32
  %11 = sext i32 %shl to i64, !dbg !2549
  tail call void @__ioc_report_conversion(i32 1598, i32 26, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %11, i8 1) nounwind, !dbg !2549
  br label %cont34, !dbg !2549

cont34:                                           ; preds = %ioc_bb33, %cont32
  %and35 = and i32 %shl, %6, !dbg !2549
  %tobool36 = icmp eq i32 %and35, 0, !dbg !2549
  br i1 %tobool36, label %if.end38, label %for.inc, !dbg !2549

if.end38:                                         ; preds = %cont34
  switch i8 %5, label %for.inc [
    i8 63, label %cont44
    i8 0, label %cont87
    i8 47, label %cont63
  ], !dbg !2550

cont44:                                           ; preds = %if.end38
  %12 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.0133, i32 1), !dbg !2551
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !2551
  %14 = extractvalue { i32, i1 } %12, 1, !dbg !2551
  %15 = zext i32 %len.0133 to i64, !dbg !2551
  br i1 %14, label %ioc_bb45, label %cont46, !dbg !2551

ioc_bb45:                                         ; preds = %cont44
  tail call void @__ioc_report_sub_overflow(i32 1602, i32 25, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %15, i64 1, i8 5) nounwind, !dbg !2551
  br label %cont46, !dbg !2551

cont46:                                           ; preds = %cont44, %ioc_bb45
  %len47 = getelementptr inbounds %struct.ngx_str_t* %args, i32 0, i32 0, !dbg !2551
  store i32 %13, i32* %len47, align 4, !dbg !2551, !tbaa !1771
  %data48 = getelementptr inbounds %struct.ngx_str_t* %args, i32 0, i32 1, !dbg !2553
  store i8* %incdec.ptr, i8** %data48, align 4, !dbg !2553, !tbaa !1776
  %16 = load i32* %len1, align 4, !dbg !2554, !tbaa !1771
  %17 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %16, i32 %len.0133), !dbg !2554
  %18 = extractvalue { i32, i1 } %17, 0, !dbg !2554
  %19 = extractvalue { i32, i1 } %17, 1, !dbg !2554
  br i1 %19, label %ioc_bb50, label %cont51, !dbg !2554

ioc_bb50:                                         ; preds = %cont46
  %20 = zext i32 %16 to i64, !dbg !2554
  tail call void @__ioc_report_sub_overflow(i32 1604, i32 18, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @5, i32 0, i32 0), i64 %20, i64 %15, i8 5) nounwind, !dbg !2554
  br label %cont51, !dbg !2554

cont51:                                           ; preds = %cont46, %ioc_bb50
  store i32 %18, i32* %len1, align 4, !dbg !2554, !tbaa !1771
  br label %return, !dbg !2555

cont63:                                           ; preds = %if.end38
  %cmp64 = icmp ugt i32 %len.0133, 2, !dbg !2556
  br i1 %cmp64, label %if.then66, label %for.inc, !dbg !2556

if.then66:                                        ; preds = %cont63
  %21 = load i8* %incdec.ptr, align 1, !dbg !2557, !tbaa !1772
  %cmp69 = icmp eq i8 %21, 46, !dbg !2557
  br i1 %cmp69, label %land.lhs.true71, label %for.inc, !dbg !2557

land.lhs.true71:                                  ; preds = %if.then66
  %arrayidx72 = getelementptr inbounds i8* %p.0132, i32 2, !dbg !2557
  %22 = load i8* %arrayidx72, align 1, !dbg !2557, !tbaa !1772
  %cmp74 = icmp eq i8 %22, 46, !dbg !2557
  br i1 %cmp74, label %land.lhs.true76, label %for.inc, !dbg !2557

land.lhs.true76:                                  ; preds = %land.lhs.true71
  %arrayidx77 = getelementptr inbounds i8* %p.0132, i32 3, !dbg !2557
  %23 = load i8* %arrayidx77, align 1, !dbg !2557, !tbaa !1772
  %cmp79 = icmp eq i8 %23, 47, !dbg !2557
  br i1 %cmp79, label %cont87, label %for.inc, !dbg !2557

for.inc:                                          ; preds = %if.end38, %cont34, %cont63, %land.lhs.true76, %land.lhs.true71, %if.then66
  %24 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.0133, i32 1), !dbg !2559
  %25 = extractvalue { i32, i1 } %24, 0, !dbg !2559
  %26 = extractvalue { i32, i1 } %24, 1, !dbg !2559
  br i1 %26, label %ioc_bb84, label %for.cond.backedge, !dbg !2559

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb84
  %tobool = icmp eq i32 %25, 0, !dbg !2559
  br i1 %tobool, label %return, label %for.cond.backedge.for.body_crit_edge, !dbg !2559

for.cond.backedge.for.body_crit_edge:             ; preds = %for.cond.backedge
  %.pre = load i8* %incdec.ptr, align 1, !dbg !2546, !tbaa !1772
  br label %for.body, !dbg !2559

ioc_bb84:                                         ; preds = %for.inc
  %27 = zext i32 %len.0133 to i64, !dbg !2559
  tail call void @__ioc_report_sub_overflow(i32 1596, i32 18, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %27, i64 1, i8 5) nounwind, !dbg !2559
  br label %for.cond.backedge, !dbg !2559

cont87:                                           ; preds = %land.lhs.true76, %if.end38, %entry, %land.lhs.true17, %lor.lhs.false
  %28 = load i32* %flags, align 4, !dbg !2560, !tbaa !1771
  %and88 = and i32 %28, 8, !dbg !2560
  %tobool89 = icmp eq i32 %and88, 0, !dbg !2560
  br i1 %tobool89, label %return, label %if.then90, !dbg !2560

if.then90:                                        ; preds = %cont87
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2561
  %29 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2561, !tbaa !1776
  %log = getelementptr inbounds %struct.ngx_connection_s* %29, i32 0, i32 10, !dbg !2561
  %30 = load %struct.ngx_log_s** %log, align 4, !dbg !2561, !tbaa !1776
  %log_level = getelementptr inbounds %struct.ngx_log_s* %30, i32 0, i32 0, !dbg !2561
  %31 = load i32* %log_level, align 4, !dbg !2561, !tbaa !1771
  %cmp93 = icmp ugt i32 %31, 3, !dbg !2561
  br i1 %cmp93, label %cont97, label %return, !dbg !2561

cont97:                                           ; preds = %if.then90
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %30, i32 0, i8* getelementptr inbounds ([29 x i8]* @.str1, i32 0, i32 0), %struct.ngx_str_t* %uri) nounwind, !dbg !2563
  br label %return, !dbg !2563

return:                                           ; preds = %for.cond.backedge, %cont87, %if.then90, %cont97, %cont51
  %retval.0 = phi i32 [ 0, %cont51 ], [ -1, %cont97 ], [ -1, %if.then90 ], [ -1, %cont87 ], [ 0, %for.cond.backedge ]
  ret i32 %retval.0, !dbg !2564
}

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

define i32 @ngx_http_parse_multi_header_lines(%struct.ngx_array_s* nocapture %headers, %struct.ngx_str_t* nocapture %name, %struct.ngx_str_t* %value) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %headers}, i64 0, metadata !1717), !dbg !2565
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %name}, i64 0, metadata !1718), !dbg !2565
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %value}, i64 0, metadata !1719), !dbg !2565
  %elts = getelementptr inbounds %struct.ngx_array_s* %headers, i32 0, i32 0, !dbg !2566
  %0 = load i8** %elts, align 4, !dbg !2566, !tbaa !1776
  %1 = bitcast i8* %0 to %struct.ngx_table_elt_t**, !dbg !2566
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_table_elt_t** %1}, i64 0, metadata !1726), !dbg !2566
  tail call void @llvm.dbg.value(metadata !1696, i64 0, metadata !1720), !dbg !2567
  %nelts = getelementptr inbounds %struct.ngx_array_s* %headers, i32 0, i32 1, !dbg !2567
  %2 = load i32* %nelts, align 4, !dbg !2567, !tbaa !1771
  %cmp158 = icmp eq i32 %2, 0, !dbg !2567
  br i1 %cmp158, label %return, label %for.body.lr.ph, !dbg !2567

for.body.lr.ph:                                   ; preds = %entry
  %len = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 0, !dbg !2569
  %data13 = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 1, !dbg !2571
  %cmp25 = icmp eq %struct.ngx_str_t* %value, null, !dbg !2573
  br label %for.body, !dbg !2567

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %i.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %24, %for.cond.backedge ]
  %3 = load i32* %len, align 4, !dbg !2569, !tbaa !1771
  %arrayidx = getelementptr inbounds %struct.ngx_table_elt_t** %1, i32 %i.0159, !dbg !2569
  %4 = load %struct.ngx_table_elt_t** %arrayidx, align 4, !dbg !2569, !tbaa !1776
  %len2 = getelementptr inbounds %struct.ngx_table_elt_t* %4, i32 0, i32 2, i32 0, !dbg !2569
  %5 = load i32* %len2, align 4, !dbg !2569, !tbaa !1771
  %cmp3 = icmp ugt i32 %3, %5, !dbg !2569
  br i1 %cmp3, label %for.inc103, label %if.end, !dbg !2569

if.end:                                           ; preds = %for.body
  %data = getelementptr inbounds %struct.ngx_table_elt_t* %4, i32 0, i32 2, i32 1, !dbg !2574
  %6 = load i8** %data, align 4, !dbg !2574, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !{i8* %6}, i64 0, metadata !1722), !dbg !2574
  %add.ptr = getelementptr inbounds i8* %6, i32 %5, !dbg !2575
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !1724), !dbg !2575
  %cmp12153 = icmp sgt i32 %5, 0, !dbg !2576
  br i1 %cmp12153, label %while.body, label %for.inc103, !dbg !2576

while.cond.loopexit.while.body_crit_edge:         ; preds = %land.rhs94
  %.pre = load i32* %len, align 4, !dbg !2571, !tbaa !1771
  br label %while.body, !dbg !2576

while.body:                                       ; preds = %if.end, %while.cond.loopexit.while.body_crit_edge
  %7 = phi i32 [ %.pre, %while.cond.loopexit.while.body_crit_edge ], [ %3, %if.end ]
  %start.0154 = phi i8* [ %start.4, %while.cond.loopexit.while.body_crit_edge ], [ %6, %if.end ]
  %8 = load i8** %data13, align 4, !dbg !2571, !tbaa !1776
  %call = tail call i32 @ngx_strncasecmp(i8* %start.0154, i8* %8, i32 %7) nounwind, !dbg !2571
  %cmp15 = icmp eq i32 %call, 0, !dbg !2571
  br i1 %cmp15, label %if.end17, label %while.cond76, !dbg !2571

if.end17:                                         ; preds = %while.body
  %9 = load i32* %len, align 4, !dbg !2577, !tbaa !1771
  %add.ptr19 = getelementptr inbounds i8* %start.0154, i32 %9, !dbg !2577
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr19}, i64 0, metadata !1722), !dbg !2577
  br label %for.cond20, !dbg !2577

for.cond20:                                       ; preds = %land.rhs, %if.end17
  %start.1 = phi i8* [ %add.ptr19, %if.end17 ], [ %incdec.ptr, %land.rhs ]
  %cmp21 = icmp ult i8* %start.1, %add.ptr, !dbg !2577
  br i1 %cmp21, label %land.rhs, label %for.end, !dbg !2577

land.rhs:                                         ; preds = %for.cond20
  %10 = load i8* %start.1, align 1, !dbg !2577, !tbaa !1772
  %cmp22 = icmp eq i8 %10, 32, !dbg !2577
  %incdec.ptr = getelementptr inbounds i8* %start.1, i32 1, !dbg !2577
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1722), !dbg !2577
  br i1 %cmp22, label %for.cond20, label %for.end

for.end:                                          ; preds = %for.cond20, %land.rhs
  %cmp28 = icmp eq i8* %start.1, %add.ptr, !dbg !2579
  br i1 %cmp25, label %if.then27, label %if.end37, !dbg !2573

if.then27:                                        ; preds = %for.end
  br i1 %cmp28, label %if.then33, label %lor.lhs.false, !dbg !2579

lor.lhs.false:                                    ; preds = %if.then27
  %11 = load i8* %start.1, align 1, !dbg !2579, !tbaa !1772
  %cmp31 = icmp eq i8 %11, 44, !dbg !2579
  br i1 %cmp31, label %if.then33, label %while.cond76, !dbg !2579

if.then33:                                        ; preds = %lor.lhs.false, %if.then27
  %12 = icmp sgt i32 %i.0159, -1, !dbg !2581
  br i1 %12, label %return, label %ioc_bb34, !dbg !2581

ioc_bb34:                                         ; preds = %if.then33
  %13 = zext i32 %i.0159 to i64, !dbg !2581
  tail call void @__ioc_report_conversion(i32 1651, i32 18, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i64 %13, i8 0) nounwind, !dbg !2581
  br label %return, !dbg !2581

if.end37:                                         ; preds = %for.end
  br i1 %cmp28, label %while.cond76, label %lor.lhs.false40, !dbg !2583

lor.lhs.false40:                                  ; preds = %if.end37
  %incdec.ptr41 = getelementptr inbounds i8* %start.1, i32 1, !dbg !2583
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr41}, i64 0, metadata !1722), !dbg !2583
  %14 = load i8* %start.1, align 1, !dbg !2583, !tbaa !1772
  %cmp43 = icmp eq i8 %14, 61, !dbg !2583
  br i1 %cmp43, label %while.cond47, label %while.cond76, !dbg !2583

while.cond47:                                     ; preds = %lor.lhs.false40, %land.rhs50
  %start.2 = phi i8* [ %incdec.ptr56, %land.rhs50 ], [ %incdec.ptr41, %lor.lhs.false40 ]
  %cmp48 = icmp ult i8* %start.2, %add.ptr, !dbg !2584
  br i1 %cmp48, label %land.rhs50, label %for.cond57, !dbg !2584

land.rhs50:                                       ; preds = %while.cond47
  %15 = load i8* %start.2, align 1, !dbg !2584, !tbaa !1772
  %cmp52 = icmp eq i8 %15, 32, !dbg !2584
  %incdec.ptr56 = getelementptr inbounds i8* %start.2, i32 1, !dbg !2585
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr56}, i64 0, metadata !1722), !dbg !2585
  br i1 %cmp52, label %while.cond47, label %for.cond57

for.cond57:                                       ; preds = %land.rhs50, %while.cond47, %land.rhs60
  %last.0 = phi i8* [ %incdec.ptr67, %land.rhs60 ], [ %start.2, %while.cond47 ], [ %start.2, %land.rhs50 ]
  %cmp58 = icmp ult i8* %last.0, %add.ptr, !dbg !2587
  br i1 %cmp58, label %land.rhs60, label %for.end68, !dbg !2587

land.rhs60:                                       ; preds = %for.cond57
  %16 = load i8* %last.0, align 1, !dbg !2587, !tbaa !1772
  %cmp62 = icmp eq i8 %16, 59, !dbg !2587
  %incdec.ptr67 = getelementptr inbounds i8* %last.0, i32 1, !dbg !2587
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr67}, i64 0, metadata !1723), !dbg !2587
  br i1 %cmp62, label %for.end68, label %for.cond57

for.end68:                                        ; preds = %land.rhs60, %for.cond57
  %sub.ptr.lhs.cast = ptrtoint i8* %last.0 to i32, !dbg !2589
  %sub.ptr.rhs.cast = ptrtoint i8* %start.2 to i32, !dbg !2589
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2589
  %17 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !2589
  br i1 %17, label %cont70, label %ioc_bb69, !dbg !2589

ioc_bb69:                                         ; preds = %for.end68
  %18 = sext i32 %sub.ptr.sub to i64, !dbg !2589
  tail call void @__ioc_report_conversion(i32 1665, i32 22, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %18, i8 1) nounwind, !dbg !2589
  br label %cont70, !dbg !2589

cont70:                                           ; preds = %ioc_bb69, %for.end68
  %len71 = getelementptr inbounds %struct.ngx_str_t* %value, i32 0, i32 0, !dbg !2589
  store i32 %sub.ptr.sub, i32* %len71, align 4, !dbg !2589, !tbaa !1771
  %data72 = getelementptr inbounds %struct.ngx_str_t* %value, i32 0, i32 1, !dbg !2590
  store i8* %start.2, i8** %data72, align 4, !dbg !2590, !tbaa !1776
  %19 = icmp sgt i32 %i.0159, -1, !dbg !2591
  br i1 %19, label %return, label %ioc_bb74, !dbg !2591

ioc_bb74:                                         ; preds = %cont70
  %20 = zext i32 %i.0159 to i64, !dbg !2591
  tail call void @__ioc_report_conversion(i32 1667, i32 14, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i64 %20, i8 0) nounwind, !dbg !2591
  br label %return, !dbg !2591

while.cond76:                                     ; preds = %lor.lhs.false40, %while.body, %lor.lhs.false, %if.end37, %while.body79
  %start.3 = phi i8* [ %incdec.ptr80, %while.body79 ], [ %incdec.ptr41, %lor.lhs.false40 ], [ %start.0154, %while.body ], [ %start.1, %lor.lhs.false ], [ %add.ptr, %if.end37 ]
  %cmp77 = icmp ult i8* %start.3, %add.ptr, !dbg !2592
  br i1 %cmp77, label %while.body79, label %while.cond91, !dbg !2592

while.body79:                                     ; preds = %while.cond76
  %incdec.ptr80 = getelementptr inbounds i8* %start.3, i32 1, !dbg !2593
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr80}, i64 0, metadata !1722), !dbg !2593
  %21 = load i8* %start.3, align 1, !dbg !2593, !tbaa !1772
  tail call void @llvm.dbg.value(metadata !{i8 %21}, i64 0, metadata !1725), !dbg !2593
  switch i8 %21, label %while.cond76 [
    i8 59, label %while.cond91
    i8 44, label %while.cond91
  ], !dbg !2595

while.cond91:                                     ; preds = %while.body79, %while.body79, %while.cond76, %land.rhs94
  %start.4 = phi i8* [ %incdec.ptr100, %land.rhs94 ], [ %incdec.ptr80, %while.body79 ], [ %incdec.ptr80, %while.body79 ], [ %start.3, %while.cond76 ]
  %cmp92 = icmp ult i8* %start.4, %add.ptr, !dbg !2596
  br i1 %cmp92, label %land.rhs94, label %for.inc103, !dbg !2596

land.rhs94:                                       ; preds = %while.cond91
  %22 = load i8* %start.4, align 1, !dbg !2596, !tbaa !1772
  %cmp96 = icmp eq i8 %22, 32, !dbg !2596
  %incdec.ptr100 = getelementptr inbounds i8* %start.4, i32 1, !dbg !2597
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr100}, i64 0, metadata !1722), !dbg !2597
  br i1 %cmp96, label %while.cond91, label %while.cond.loopexit.while.body_crit_edge

for.inc103:                                       ; preds = %if.end, %while.cond91, %for.body
  %23 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0159, i32 1), !dbg !2567
  %24 = extractvalue { i32, i1 } %23, 0, !dbg !2567
  %25 = extractvalue { i32, i1 } %23, 1, !dbg !2567
  br i1 %25, label %ioc_bb104, label %for.cond.backedge, !dbg !2567

for.cond.backedge:                                ; preds = %for.inc103, %ioc_bb104
  %26 = load i32* %nelts, align 4, !dbg !2567, !tbaa !1771
  %cmp = icmp ult i32 %24, %26, !dbg !2567
  br i1 %cmp, label %for.body, label %return, !dbg !2567

ioc_bb104:                                        ; preds = %for.inc103
  %27 = zext i32 %i.0159 to i64, !dbg !2567
  tail call void @__ioc_report_add_overflow(i32 1635, i32 38, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @9, i32 0, i32 0), i64 %27, i64 1, i8 5) nounwind, !dbg !2567
  br label %for.cond.backedge, !dbg !2567

return:                                           ; preds = %entry, %for.cond.backedge, %cont70, %ioc_bb74, %if.then33, %ioc_bb34
  %retval.0 = phi i32 [ %i.0159, %ioc_bb34 ], [ %i.0159, %if.then33 ], [ %i.0159, %ioc_bb74 ], [ %i.0159, %cont70 ], [ -5, %for.cond.backedge ], [ -5, %entry ]
  ret i32 %retval.0, !dbg !2599
}

declare i32 @ngx_strncasecmp(i8*, i8*, i32)

define i32 @ngx_http_arg(%struct.ngx_http_request_s* nocapture %r, i8* %name, i32 %len, %struct.ngx_str_t* nocapture %value) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1733), !dbg !2600
  tail call void @llvm.dbg.value(metadata !{i8* %name}, i64 0, metadata !1734), !dbg !2600
  tail call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !1735), !dbg !2600
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %value}, i64 0, metadata !1736), !dbg !2600
  %len1 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 23, i32 0, !dbg !2601
  %0 = load i32* %len1, align 4, !dbg !2601, !tbaa !1771
  %cmp = icmp eq i32 %0, 0, !dbg !2601
  br i1 %cmp, label %return, label %if.end, !dbg !2601

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 23, i32 1, !dbg !2602
  %1 = load i8** %data, align 4, !dbg !2602, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !1737), !dbg !2602
  %add.ptr = getelementptr inbounds i8* %1, i32 %0, !dbg !2603
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !1739), !dbg !2603
  %cmp775 = icmp sgt i32 %0, 0, !dbg !2604
  br i1 %cmp775, label %for.body.lr.ph, label %return, !dbg !2604

for.body.lr.ph:                                   ; preds = %if.end
  %add.ptr.sum = add i32 %0, -1, !dbg !2606
  %add.ptr8 = getelementptr inbounds i8* %1, i32 %add.ptr.sum, !dbg !2606
  %2 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len, i32 1), !dbg !2606
  %3 = zext i32 %len to i64, !dbg !2606
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !2606
  br label %for.body, !dbg !2604

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %p.076 = phi i8* [ %1, %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %5 = extractvalue { i32, i1 } %2, 0, !dbg !2606
  br i1 %4, label %ioc_bb11, label %cont12, !dbg !2606

ioc_bb11:                                         ; preds = %for.body
  tail call void @__ioc_report_sub_overflow(i32 1695, i32 46, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %3, i64 1, i8 5) nounwind, !dbg !2606
  br label %cont12, !dbg !2606

cont12:                                           ; preds = %for.body, %ioc_bb11
  %call = tail call i8* @ngx_strlcasestrn(i8* %p.076, i8* %add.ptr8, i8* %name, i32 %5) nounwind, !dbg !2606
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !1737), !dbg !2606
  %cmp13 = icmp eq i8* %call, null, !dbg !2608
  br i1 %cmp13, label %return, label %if.end17, !dbg !2608

if.end17:                                         ; preds = %cont12
  %6 = load i8** %data, align 4, !dbg !2609, !tbaa !1776
  %cmp20 = icmp eq i8* %call, %6, !dbg !2609
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false, !dbg !2609

lor.lhs.false:                                    ; preds = %if.end17
  %add.ptr21 = getelementptr inbounds i8* %call, i32 -1, !dbg !2609
  %7 = load i8* %add.ptr21, align 1, !dbg !2609, !tbaa !1772
  %cmp22 = icmp eq i8 %7, 38, !dbg !2609
  br i1 %cmp22, label %land.lhs.true, label %for.inc, !dbg !2609

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end17
  %add.ptr24 = getelementptr inbounds i8* %call, i32 %len, !dbg !2609
  %8 = load i8* %add.ptr24, align 1, !dbg !2609, !tbaa !1772
  %cmp26 = icmp eq i8 %8, 61, !dbg !2609
  br i1 %cmp26, label %if.then28, label %for.inc, !dbg !2609

if.then28:                                        ; preds = %land.lhs.true
  %add.ptr24.sum = add i32 %len, 1, !dbg !2610
  %add.ptr30 = getelementptr inbounds i8* %call, i32 %add.ptr24.sum, !dbg !2610
  %data31 = getelementptr inbounds %struct.ngx_str_t* %value, i32 0, i32 1, !dbg !2610
  store i8* %add.ptr30, i8** %data31, align 4, !dbg !2610, !tbaa !1776
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !2612), !dbg !2614
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !2615), !dbg !2614
  tail call void @llvm.dbg.value(metadata !2616, i64 0, metadata !2617), !dbg !2614
  br label %while.cond.i, !dbg !2618

while.cond.i:                                     ; preds = %while.body.i, %if.then28
  %p.addr.0.i = phi i8* [ %call, %if.then28 ], [ %incdec.ptr.i, %while.body.i ]
  %cmp.i = icmp ult i8* %p.addr.0.i, %add.ptr, !dbg !2618
  br i1 %cmp.i, label %while.body.i, label %if.then37, !dbg !2618

while.body.i:                                     ; preds = %while.cond.i
  %9 = load i8* %p.addr.0.i, align 1, !dbg !2620, !tbaa !1772
  %cmp2.i = icmp eq i8 %9, 38, !dbg !2620
  %incdec.ptr.i = getelementptr inbounds i8* %p.addr.0.i, i32 1, !dbg !2622
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !2612), !dbg !2622
  br i1 %cmp2.i, label %ngx_strlchr.exit, label %while.cond.i, !dbg !2620

ngx_strlchr.exit:                                 ; preds = %while.body.i
  tail call void @llvm.dbg.value(metadata !{i8* %p.addr.0.i}, i64 0, metadata !1737), !dbg !2613
  %cmp35 = icmp eq i8* %p.addr.0.i, null, !dbg !2623
  br i1 %cmp35, label %if.then37, label %if.end43, !dbg !2623

if.then37:                                        ; preds = %while.cond.i, %ngx_strlchr.exit
  %10 = load i8** %data, align 4, !dbg !2624, !tbaa !1776
  %11 = load i32* %len1, align 4, !dbg !2624, !tbaa !1771
  %add.ptr42 = getelementptr inbounds i8* %10, i32 %11, !dbg !2624
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr42}, i64 0, metadata !1737), !dbg !2624
  br label %if.end43, !dbg !2626

if.end43:                                         ; preds = %if.then37, %ngx_strlchr.exit
  %p.1 = phi i8* [ %add.ptr42, %if.then37 ], [ %p.addr.0.i, %ngx_strlchr.exit ]
  %sub.ptr.lhs.cast = ptrtoint i8* %p.1 to i32, !dbg !2627
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr30 to i32, !dbg !2627
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2627
  %12 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !2627
  br i1 %12, label %cont46, label %ioc_bb45, !dbg !2627

ioc_bb45:                                         ; preds = %if.end43
  %13 = sext i32 %sub.ptr.sub to i64, !dbg !2627
  tail call void @__ioc_report_conversion(i32 1705, i32 22, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %13, i8 1) nounwind, !dbg !2627
  br label %cont46, !dbg !2627

cont46:                                           ; preds = %ioc_bb45, %if.end43
  %len47 = getelementptr inbounds %struct.ngx_str_t* %value, i32 0, i32 0, !dbg !2627
  store i32 %sub.ptr.sub, i32* %len47, align 4, !dbg !2627, !tbaa !1771
  br label %return, !dbg !2628

for.inc:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %incdec.ptr = getelementptr inbounds i8* %call, i32 1, !dbg !2604
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1737), !dbg !2604
  %cmp7 = icmp ult i8* %incdec.ptr, %add.ptr, !dbg !2604
  br i1 %cmp7, label %for.body, label %return, !dbg !2604

return:                                           ; preds = %if.end, %cont12, %for.inc, %entry, %cont46
  %retval.0 = phi i32 [ 0, %cont46 ], [ -5, %entry ], [ -5, %for.inc ], [ -5, %cont12 ], [ -5, %if.end ]
  ret i32 %retval.0, !dbg !2629
}

declare i8* @ngx_strlcasestrn(i8*, i8*, i8*, i32)

define void @ngx_http_split_args(%struct.ngx_http_request_s* nocapture %r, %struct.ngx_str_t* nocapture %uri, %struct.ngx_str_t* nocapture %args) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1745), !dbg !2630
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %uri}, i64 0, metadata !1746), !dbg !2630
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %args}, i64 0, metadata !1747), !dbg !2630
  %data = getelementptr inbounds %struct.ngx_str_t* %uri, i32 0, i32 1, !dbg !2631
  %0 = load i8** %data, align 4, !dbg !2631, !tbaa !1776
  %len = getelementptr inbounds %struct.ngx_str_t* %uri, i32 0, i32 0, !dbg !2631
  %1 = load i32* %len, align 4, !dbg !2631, !tbaa !1771
  %add.ptr = getelementptr inbounds i8* %0, i32 %1, !dbg !2631
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !1750), !dbg !2631
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !2632), !dbg !2634
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !2635), !dbg !2634
  tail call void @llvm.dbg.value(metadata !2636, i64 0, metadata !2637), !dbg !2634
  br label %while.cond.i, !dbg !2638

while.cond.i:                                     ; preds = %while.body.i, %entry
  %p.addr.0.i = phi i8* [ %0, %entry ], [ %incdec.ptr.i, %while.body.i ]
  %cmp.i = icmp ult i8* %p.addr.0.i, %add.ptr, !dbg !2638
  br i1 %cmp.i, label %while.body.i, label %cont15, !dbg !2638

while.body.i:                                     ; preds = %while.cond.i
  %2 = load i8* %p.addr.0.i, align 1, !dbg !2639, !tbaa !1772
  %cmp2.i = icmp eq i8 %2, 63, !dbg !2639
  %incdec.ptr.i = getelementptr inbounds i8* %p.addr.0.i, i32 1, !dbg !2640
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !2632), !dbg !2640
  br i1 %cmp2.i, label %ngx_strlchr.exit, label %while.cond.i, !dbg !2639

ngx_strlchr.exit:                                 ; preds = %while.body.i
  tail call void @llvm.dbg.value(metadata !{i8* %p.addr.0.i}, i64 0, metadata !1748), !dbg !2633
  %tobool = icmp eq i8* %p.addr.0.i, null, !dbg !2641
  br i1 %tobool, label %cont15, label %if.then, !dbg !2641

if.then:                                          ; preds = %ngx_strlchr.exit
  %sub.ptr.lhs.cast = ptrtoint i8* %p.addr.0.i to i32, !dbg !2642
  %sub.ptr.rhs.cast = ptrtoint i8* %0 to i32, !dbg !2642
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2642
  %3 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !2642
  br i1 %3, label %cont4, label %ioc_bb3, !dbg !2642

ioc_bb3:                                          ; preds = %if.then
  %4 = sext i32 %sub.ptr.sub to i64, !dbg !2642
  tail call void @__ioc_report_conversion(i32 1719, i32 18, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %4, i8 1) nounwind, !dbg !2642
  br label %cont4, !dbg !2642

cont4:                                            ; preds = %ioc_bb3, %if.then
  store i32 %sub.ptr.sub, i32* %len, align 4, !dbg !2642, !tbaa !1771
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !1748), !dbg !2644
  %sub.ptr.lhs.cast6 = ptrtoint i8* %add.ptr to i32, !dbg !2645
  %sub.ptr.rhs.cast7 = ptrtoint i8* %incdec.ptr.i to i32, !dbg !2645
  %sub.ptr.sub8 = sub i32 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7, !dbg !2645
  %5 = icmp sgt i32 %sub.ptr.sub8, -1, !dbg !2645
  br i1 %5, label %cont11, label %ioc_bb10, !dbg !2645

ioc_bb10:                                         ; preds = %cont4
  %6 = sext i32 %sub.ptr.sub8 to i64, !dbg !2645
  tail call void @__ioc_report_conversion(i32 1721, i32 19, i8* getelementptr inbounds ([26 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %6, i8 1) nounwind, !dbg !2645
  br label %cont11, !dbg !2645

cont11:                                           ; preds = %ioc_bb10, %cont4
  %len12 = getelementptr inbounds %struct.ngx_str_t* %args, i32 0, i32 0, !dbg !2645
  store i32 %sub.ptr.sub8, i32* %len12, align 4, !dbg !2645, !tbaa !1771
  %data13 = getelementptr inbounds %struct.ngx_str_t* %args, i32 0, i32 1, !dbg !2646
  store i8* %incdec.ptr.i, i8** %data13, align 4, !dbg !2646, !tbaa !1776
  br label %if.end, !dbg !2647

cont15:                                           ; preds = %while.cond.i, %ngx_strlchr.exit
  %len16 = getelementptr inbounds %struct.ngx_str_t* %args, i32 0, i32 0, !dbg !2648
  store i32 0, i32* %len16, align 4, !dbg !2648, !tbaa !1771
  br label %if.end

if.end:                                           ; preds = %cont15, %cont11
  ret void, !dbg !2650
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/http/ngx_http_parse.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1695, metadata !1697, metadata !1759} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3, metadata !1612, metadata !1636, metadata !1659}
!3 = metadata !{i32 786436, metadata !4, metadata !"__anonymous_0x8aa04f0", metadata !5, i32 77, i64 32, i64 32, i32 0, i32 0, null, metadata !1584, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [__anonymous_0x8aa04f0] [line 77, size 32, align 32, offset 0] [from ]
!4 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_http_parse_request_line", metadata !"ngx_http_parse_request_line", metadata !"", metadata !5, i32 71, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, %struct.ngx_buf_s*)* @ngx_http_parse_request_line, null, null, metadata !1574, i32 72} ; [ DW_TAG_subprogram ] [line 71] [def] [scope 72] [ngx_http_parse_request_line]
!5 = metadata !{i32 786473, metadata !"src/http/ngx_http_parse.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!6 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !12, metadata !153}
!8 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !5, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!9 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !5, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!10 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !5, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!13 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !5, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!14 = metadata !{i32 786451, null, metadata !"ngx_http_request_s", metadata !15, i32 354, i64 5280, i64 32, i32 0, i32 0, null, metadata !16, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_request_s] [line 354, size 5280, align 32, offset 0] [from ]
!15 = metadata !{i32 786473, metadata !"src/http/ngx_http_request.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!16 = metadata !{metadata !17, metadata !20, metadata !371, metadata !373, metadata !374, metadata !375, metadata !376, metadata !383, metadata !384, metadata !582, metadata !1097, metadata !1098, metadata !1099, metadata !1100, metadata !1136, metadata !1165, metadata !1177, metadata !1178, metadata !1179, metadata !1180, metadata !1181, metadata !1182, metadata !1183, metadata !1184, metadata !1185, metadata !1186, metadata !1187, metadata !1188, metadata !1189, metadata !1190, metadata !1191, metadata !1192, metadata !1200, metadata !1211, metadata !1218, metadata !1444, metadata !1445, metadata !1446, metadata !1447, metadata !1459, metadata !1460, metadata !1462, metadata !1463, metadata !1464, metadata !1465, metadata !1466, metadata !1467, metadata !1479, metadata !1484, metadata !1492, metadata !1493, metadata !1494, metadata !1495, metadata !1496, metadata !1497, metadata !1498, metadata !1499, metadata !1500, metadata !1501, metadata !1502, metadata !1503, metadata !1504, metadata !1505, metadata !1506, metadata !1507, metadata !1508, metadata !1509, metadata !1510, metadata !1511, metadata !1512, metadata !1513, metadata !1514, metadata !1515, metadata !1516, metadata !1517, metadata !1518, metadata !1519, metadata !1520, metadata !1521, metadata !1522, metadata !1523, metadata !1524, metadata !1525, metadata !1526, metadata !1527, metadata !1528, metadata !1529, metadata !1530, metadata !1531, metadata !1532, metadata !1533, metadata !1534, metadata !1535, metadata !1536, metadata !1537, metadata !1538, metadata !1539, metadata !1540, metadata !1541, metadata !1542, metadata !1543, metadata !1544, metadata !1545, metadata !1546, metadata !1547, metadata !1548, metadata !1549, metadata !1550, metadata !1551, metadata !1555, metadata !1556, metadata !1557, metadata !1558, metadata !1559, metadata !1560, metadata !1561, metadata !1562, metadata !1563, metadata !1564, metadata !1565, metadata !1566, metadata !1567, metadata !1568, metadata !1569, metadata !1570, metadata !1571, metadata !1572, metadata !1573}
!17 = metadata !{i32 786445, metadata !14, metadata !"signature", metadata !15, i32 355, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [signature] [line 355, size 32, align 32, offset 0] [from uint32_t]
!18 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !15, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!19 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!20 = metadata !{i32 786445, metadata !14, metadata !"connection", metadata !15, i32 357, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [connection] [line 357, size 32, align 32, offset 32] [from ]
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!22 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !15, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!23 = metadata !{i32 786451, null, metadata !"ngx_connection_s", metadata !24, i32 113, i64 768, i64 32, i32 0, i32 0, null, metadata !25, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_connection_s] [line 113, size 768, align 32, offset 0] [from ]
!24 = metadata !{i32 786473, metadata !"src/core/ngx_connection.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!25 = metadata !{metadata !26, metadata !28, metadata !128, metadata !129, metadata !131, metadata !140, metadata !142, metadata !238, metadata !243, metadata !300, metadata !301, metadata !302, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370}
!26 = metadata !{i32 786445, metadata !23, metadata !"data", metadata !24, i32 114, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 114, size 32, align 32, offset 0] [from ]
!27 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!28 = metadata !{i32 786445, metadata !23, metadata !"read", metadata !24, i32 115, i64 32, i64 32, i64 32, i32 0, metadata !29} ; [ DW_TAG_member ] [read] [line 115, size 32, align 32, offset 32] [from ]
!29 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!30 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !24, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!31 = metadata !{i32 786451, null, metadata !"ngx_event_s", metadata !32, i32 38, i64 416, i64 32, i32 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_s] [line 38, size 416, align 32, offset 0] [from ]
!32 = metadata !{i32 786473, metadata !"src/event/ngx_event.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!33 = metadata !{metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !61, metadata !64, metadata !108, metadata !122, metadata !123, metadata !124, metadata !125, metadata !126}
!34 = metadata !{i32 786445, metadata !31, metadata !"data", metadata !32, i32 39, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 39, size 32, align 32, offset 0] [from ]
!35 = metadata !{i32 786445, metadata !31, metadata !"write", metadata !32, i32 41, i64 1, i64 32, i64 32, i32 0, metadata !19} ; [ DW_TAG_member ] [write] [line 41, size 1, align 32, offset 32] [from unsigned int]
!36 = metadata !{i32 786445, metadata !31, metadata !"accept", metadata !32, i32 43, i64 1, i64 32, i64 33, i32 0, metadata !19} ; [ DW_TAG_member ] [accept] [line 43, size 1, align 32, offset 33] [from unsigned int]
!37 = metadata !{i32 786445, metadata !31, metadata !"instance", metadata !32, i32 46, i64 1, i64 32, i64 34, i32 0, metadata !19} ; [ DW_TAG_member ] [instance] [line 46, size 1, align 32, offset 34] [from unsigned int]
!38 = metadata !{i32 786445, metadata !31, metadata !"active", metadata !32, i32 52, i64 1, i64 32, i64 35, i32 0, metadata !19} ; [ DW_TAG_member ] [active] [line 52, size 1, align 32, offset 35] [from unsigned int]
!39 = metadata !{i32 786445, metadata !31, metadata !"disabled", metadata !32, i32 54, i64 1, i64 32, i64 36, i32 0, metadata !19} ; [ DW_TAG_member ] [disabled] [line 54, size 1, align 32, offset 36] [from unsigned int]
!40 = metadata !{i32 786445, metadata !31, metadata !"ready", metadata !32, i32 57, i64 1, i64 32, i64 37, i32 0, metadata !19} ; [ DW_TAG_member ] [ready] [line 57, size 1, align 32, offset 37] [from unsigned int]
!41 = metadata !{i32 786445, metadata !31, metadata !"oneshot", metadata !32, i32 59, i64 1, i64 32, i64 38, i32 0, metadata !19} ; [ DW_TAG_member ] [oneshot] [line 59, size 1, align 32, offset 38] [from unsigned int]
!42 = metadata !{i32 786445, metadata !31, metadata !"complete", metadata !32, i32 62, i64 1, i64 32, i64 39, i32 0, metadata !19} ; [ DW_TAG_member ] [complete] [line 62, size 1, align 32, offset 39] [from unsigned int]
!43 = metadata !{i32 786445, metadata !31, metadata !"eof", metadata !32, i32 64, i64 1, i64 32, i64 40, i32 0, metadata !19} ; [ DW_TAG_member ] [eof] [line 64, size 1, align 32, offset 40] [from unsigned int]
!44 = metadata !{i32 786445, metadata !31, metadata !"error", metadata !32, i32 65, i64 1, i64 32, i64 41, i32 0, metadata !19} ; [ DW_TAG_member ] [error] [line 65, size 1, align 32, offset 41] [from unsigned int]
!45 = metadata !{i32 786445, metadata !31, metadata !"timedout", metadata !32, i32 67, i64 1, i64 32, i64 42, i32 0, metadata !19} ; [ DW_TAG_member ] [timedout] [line 67, size 1, align 32, offset 42] [from unsigned int]
!46 = metadata !{i32 786445, metadata !31, metadata !"timer_set", metadata !32, i32 68, i64 1, i64 32, i64 43, i32 0, metadata !19} ; [ DW_TAG_member ] [timer_set] [line 68, size 1, align 32, offset 43] [from unsigned int]
!47 = metadata !{i32 786445, metadata !31, metadata !"delayed", metadata !32, i32 70, i64 1, i64 32, i64 44, i32 0, metadata !19} ; [ DW_TAG_member ] [delayed] [line 70, size 1, align 32, offset 44] [from unsigned int]
!48 = metadata !{i32 786445, metadata !31, metadata !"read_discarded", metadata !32, i32 72, i64 1, i64 32, i64 45, i32 0, metadata !19} ; [ DW_TAG_member ] [read_discarded] [line 72, size 1, align 32, offset 45] [from unsigned int]
!49 = metadata !{i32 786445, metadata !31, metadata !"unexpected_eof", metadata !32, i32 74, i64 1, i64 32, i64 46, i32 0, metadata !19} ; [ DW_TAG_member ] [unexpected_eof] [line 74, size 1, align 32, offset 46] [from unsigned int]
!50 = metadata !{i32 786445, metadata !31, metadata !"deferred_accept", metadata !32, i32 76, i64 1, i64 32, i64 47, i32 0, metadata !19} ; [ DW_TAG_member ] [deferred_accept] [line 76, size 1, align 32, offset 47] [from unsigned int]
!51 = metadata !{i32 786445, metadata !31, metadata !"pending_eof", metadata !32, i32 79, i64 1, i64 32, i64 48, i32 0, metadata !19} ; [ DW_TAG_member ] [pending_eof] [line 79, size 1, align 32, offset 48] [from unsigned int]
!52 = metadata !{i32 786445, metadata !31, metadata !"posted_ready", metadata !32, i32 82, i64 1, i64 32, i64 49, i32 0, metadata !19} ; [ DW_TAG_member ] [posted_ready] [line 82, size 1, align 32, offset 49] [from unsigned int]
!53 = metadata !{i32 786445, metadata !31, metadata !"available", metadata !32, i32 114, i64 1, i64 32, i64 50, i32 0, metadata !19} ; [ DW_TAG_member ] [available] [line 114, size 1, align 32, offset 50] [from unsigned int]
!54 = metadata !{i32 786445, metadata !31, metadata !"handler", metadata !32, i32 117, i64 32, i64 32, i64 64, i32 0, metadata !55} ; [ DW_TAG_member ] [handler] [line 117, size 32, align 32, offset 64] [from ngx_event_handler_pt]
!55 = metadata !{i32 786454, null, metadata !"ngx_event_handler_pt", metadata !32, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ] [ngx_event_handler_pt] [line 26, size 0, align 0, offset 0] [from ]
!56 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!57 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!58 = metadata !{null, metadata !59}
!59 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!60 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !32, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!61 = metadata !{i32 786445, metadata !31, metadata !"index", metadata !32, i32 130, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [index] [line 130, size 32, align 32, offset 96] [from ngx_uint_t]
!62 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !32, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!63 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !32, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!64 = metadata !{i32 786445, metadata !31, metadata !"log", metadata !32, i32 132, i64 32, i64 32, i64 128, i32 0, metadata !65} ; [ DW_TAG_member ] [log] [line 132, size 32, align 32, offset 128] [from ]
!65 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!66 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !32, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!67 = metadata !{i32 786451, null, metadata !"ngx_log_s", metadata !68, i32 48, i64 192, i64 32, i32 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_log_s] [line 48, size 192, align 32, offset 0] [from ]
!68 = metadata !{i32 786473, metadata !"src/core/ngx_log.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!69 = metadata !{metadata !70, metadata !71, metadata !94, metadata !97, metadata !104, metadata !105}
!70 = metadata !{i32 786445, metadata !67, metadata !"log_level", metadata !68, i32 49, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [log_level] [line 49, size 32, align 32, offset 0] [from ngx_uint_t]
!71 = metadata !{i32 786445, metadata !67, metadata !"file", metadata !68, i32 50, i64 32, i64 32, i64 32, i32 0, metadata !72} ; [ DW_TAG_member ] [file] [line 50, size 32, align 32, offset 32] [from ]
!72 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !73} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_t]
!73 = metadata !{i32 786454, null, metadata !"ngx_open_file_t", metadata !68, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [ngx_open_file_t] [line 19, size 0, align 0, offset 0] [from ngx_open_file_s]
!74 = metadata !{i32 786451, null, metadata !"ngx_open_file_s", metadata !75, i32 90, i64 192, i64 32, i32 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_open_file_s] [line 90, size 192, align 32, offset 0] [from ]
!75 = metadata !{i32 786473, metadata !"src/core/ngx_conf_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!76 = metadata !{metadata !77, metadata !79, metadata !91, metadata !92, metadata !93}
!77 = metadata !{i32 786445, metadata !74, metadata !"fd", metadata !75, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !78} ; [ DW_TAG_member ] [fd] [line 91, size 32, align 32, offset 0] [from ngx_fd_t]
!78 = metadata !{i32 786454, null, metadata !"ngx_fd_t", metadata !75, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ngx_fd_t] [line 16, size 0, align 0, offset 0] [from int]
!79 = metadata !{i32 786445, metadata !74, metadata !"name", metadata !75, i32 92, i64 64, i64 32, i64 32, i32 0, metadata !80} ; [ DW_TAG_member ] [name] [line 92, size 64, align 32, offset 32] [from ngx_str_t]
!80 = metadata !{i32 786454, null, metadata !"ngx_str_t", metadata !75, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [ngx_str_t] [line 19, size 0, align 0, offset 0] [from ]
!81 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!82 = metadata !{i32 786473, metadata !"src/core/ngx_string.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!83 = metadata !{metadata !84, metadata !86}
!84 = metadata !{i32 786445, metadata !81, metadata !"len", metadata !82, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [len] [line 17, size 32, align 32, offset 0] [from size_t]
!85 = metadata !{i32 786454, null, metadata !"size_t", metadata !82, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [size_t] [line 32, size 0, align 0, offset 0] [from unsigned int]
!86 = metadata !{i32 786445, metadata !81, metadata !"data", metadata !82, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !87} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 32] [from ]
!87 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!88 = metadata !{i32 786454, null, metadata !"u_char", metadata !82, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!89 = metadata !{i32 786454, null, metadata !"__u_char", metadata !82, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!90 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!91 = metadata !{i32 786445, metadata !74, metadata !"buffer", metadata !75, i32 94, i64 32, i64 32, i64 96, i32 0, metadata !87} ; [ DW_TAG_member ] [buffer] [line 94, size 32, align 32, offset 96] [from ]
!92 = metadata !{i32 786445, metadata !74, metadata !"pos", metadata !75, i32 95, i64 32, i64 32, i64 128, i32 0, metadata !87} ; [ DW_TAG_member ] [pos] [line 95, size 32, align 32, offset 128] [from ]
!93 = metadata !{i32 786445, metadata !74, metadata !"last", metadata !75, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !87} ; [ DW_TAG_member ] [last] [line 96, size 32, align 32, offset 160] [from ]
!94 = metadata !{i32 786445, metadata !67, metadata !"connection", metadata !68, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !95} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 64] [from ngx_atomic_uint_t]
!95 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !68, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!96 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!97 = metadata !{i32 786445, metadata !67, metadata !"handler", metadata !68, i32 54, i64 32, i64 32, i64 96, i32 0, metadata !98} ; [ DW_TAG_member ] [handler] [line 54, size 32, align 32, offset 96] [from ngx_log_handler_pt]
!98 = metadata !{i32 786454, null, metadata !"ngx_log_handler_pt", metadata !68, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [ngx_log_handler_pt] [line 45, size 0, align 0, offset 0] [from ]
!99 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !100} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!101 = metadata !{metadata !87, metadata !102, metadata !87, metadata !85}
!102 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !103} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!103 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !68, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!104 = metadata !{i32 786445, metadata !67, metadata !"data", metadata !68, i32 55, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 55, size 32, align 32, offset 128] [from ]
!105 = metadata !{i32 786445, metadata !67, metadata !"action", metadata !68, i32 63, i64 32, i64 32, i64 160, i32 0, metadata !106} ; [ DW_TAG_member ] [action] [line 63, size 32, align 32, offset 160] [from ]
!106 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !107} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!107 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!108 = metadata !{i32 786445, metadata !31, metadata !"timer", metadata !32, i32 134, i64 160, i64 32, i64 160, i32 0, metadata !109} ; [ DW_TAG_member ] [timer] [line 134, size 160, align 32, offset 160] [from ngx_rbtree_node_t]
!109 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !32, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!110 = metadata !{i32 786451, null, metadata !"ngx_rbtree_node_s", metadata !111, i32 22, i64 160, i64 32, i32 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_node_s] [line 22, size 160, align 32, offset 0] [from ]
!111 = metadata !{i32 786473, metadata !"src/core/ngx_rbtree.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!112 = metadata !{metadata !113, metadata !115, metadata !118, metadata !119, metadata !120, metadata !121}
!113 = metadata !{i32 786445, metadata !110, metadata !"key", metadata !111, i32 23, i64 32, i64 32, i64 0, i32 0, metadata !114} ; [ DW_TAG_member ] [key] [line 23, size 32, align 32, offset 0] [from ngx_rbtree_key_t]
!114 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_t", metadata !111, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [ngx_rbtree_key_t] [line 16, size 0, align 0, offset 0] [from ngx_uint_t]
!115 = metadata !{i32 786445, metadata !110, metadata !"left", metadata !111, i32 24, i64 32, i64 32, i64 32, i32 0, metadata !116} ; [ DW_TAG_member ] [left] [line 24, size 32, align 32, offset 32] [from ]
!116 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !117} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_rbtree_node_t]
!117 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !111, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !110} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!118 = metadata !{i32 786445, metadata !110, metadata !"right", metadata !111, i32 25, i64 32, i64 32, i64 64, i32 0, metadata !116} ; [ DW_TAG_member ] [right] [line 25, size 32, align 32, offset 64] [from ]
!119 = metadata !{i32 786445, metadata !110, metadata !"parent", metadata !111, i32 26, i64 32, i64 32, i64 96, i32 0, metadata !116} ; [ DW_TAG_member ] [parent] [line 26, size 32, align 32, offset 96] [from ]
!120 = metadata !{i32 786445, metadata !110, metadata !"color", metadata !111, i32 27, i64 8, i64 8, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [color] [line 27, size 8, align 8, offset 128] [from u_char]
!121 = metadata !{i32 786445, metadata !110, metadata !"data", metadata !111, i32 28, i64 8, i64 8, i64 136, i32 0, metadata !88} ; [ DW_TAG_member ] [data] [line 28, size 8, align 8, offset 136] [from u_char]
!122 = metadata !{i32 786445, metadata !31, metadata !"closed", metadata !32, i32 136, i64 1, i64 32, i64 320, i32 0, metadata !19} ; [ DW_TAG_member ] [closed] [line 136, size 1, align 32, offset 320] [from unsigned int]
!123 = metadata !{i32 786445, metadata !31, metadata !"channel", metadata !32, i32 139, i64 1, i64 32, i64 321, i32 0, metadata !19} ; [ DW_TAG_member ] [channel] [line 139, size 1, align 32, offset 321] [from unsigned int]
!124 = metadata !{i32 786445, metadata !31, metadata !"resolver", metadata !32, i32 140, i64 1, i64 32, i64 322, i32 0, metadata !19} ; [ DW_TAG_member ] [resolver] [line 140, size 1, align 32, offset 322] [from unsigned int]
!125 = metadata !{i32 786445, metadata !31, metadata !"next", metadata !32, i32 167, i64 32, i64 32, i64 352, i32 0, metadata !59} ; [ DW_TAG_member ] [next] [line 167, size 32, align 32, offset 352] [from ]
!126 = metadata !{i32 786445, metadata !31, metadata !"prev", metadata !32, i32 168, i64 32, i64 32, i64 384, i32 0, metadata !127} ; [ DW_TAG_member ] [prev] [line 168, size 32, align 32, offset 384] [from ]
!127 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!128 = metadata !{i32 786445, metadata !23, metadata !"write", metadata !24, i32 116, i64 32, i64 32, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [write] [line 116, size 32, align 32, offset 64] [from ]
!129 = metadata !{i32 786445, metadata !23, metadata !"fd", metadata !24, i32 118, i64 32, i64 32, i64 96, i32 0, metadata !130} ; [ DW_TAG_member ] [fd] [line 118, size 32, align 32, offset 96] [from ngx_socket_t]
!130 = metadata !{i32 786454, null, metadata !"ngx_socket_t", metadata !24, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ngx_socket_t] [line 17, size 0, align 0, offset 0] [from int]
!131 = metadata !{i32 786445, metadata !23, metadata !"recv", metadata !24, i32 120, i64 32, i64 32, i64 128, i32 0, metadata !132} ; [ DW_TAG_member ] [recv] [line 120, size 32, align 32, offset 128] [from ngx_recv_pt]
!132 = metadata !{i32 786454, null, metadata !"ngx_recv_pt", metadata !24, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [ngx_recv_pt] [line 19, size 0, align 0, offset 0] [from ]
!133 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !134} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!134 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!135 = metadata !{metadata !136, metadata !138, metadata !87, metadata !85}
!136 = metadata !{i32 786454, null, metadata !"ssize_t", metadata !24, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_typedef ] [ssize_t] [line 110, size 0, align 0, offset 0] [from __ssize_t]
!137 = metadata !{i32 786454, null, metadata !"__ssize_t", metadata !24, i32 180, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [__ssize_t] [line 180, size 0, align 0, offset 0] [from int]
!138 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !139} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!139 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !24, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!140 = metadata !{i32 786445, metadata !23, metadata !"send", metadata !24, i32 121, i64 32, i64 32, i64 160, i32 0, metadata !141} ; [ DW_TAG_member ] [send] [line 121, size 32, align 32, offset 160] [from ngx_send_pt]
!141 = metadata !{i32 786454, null, metadata !"ngx_send_pt", metadata !24, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [ngx_send_pt] [line 21, size 0, align 0, offset 0] [from ]
!142 = metadata !{i32 786445, metadata !23, metadata !"recv_chain", metadata !24, i32 122, i64 32, i64 32, i64 192, i32 0, metadata !143} ; [ DW_TAG_member ] [recv_chain] [line 122, size 32, align 32, offset 192] [from ngx_recv_chain_pt]
!143 = metadata !{i32 786454, null, metadata !"ngx_recv_chain_pt", metadata !24, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_typedef ] [ngx_recv_chain_pt] [line 20, size 0, align 0, offset 0] [from ]
!144 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !145} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!145 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!146 = metadata !{metadata !136, metadata !138, metadata !147}
!147 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!148 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !24, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!149 = metadata !{i32 786451, null, metadata !"ngx_chain_s", metadata !150, i32 59, i64 64, i64 32, i32 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_chain_s] [line 59, size 64, align 32, offset 0] [from ]
!150 = metadata !{i32 786473, metadata !"src/core/ngx_buf.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!151 = metadata !{metadata !152, metadata !235}
!152 = metadata !{i32 786445, metadata !149, metadata !"buf", metadata !150, i32 60, i64 32, i64 32, i64 0, i32 0, metadata !153} ; [ DW_TAG_member ] [buf] [line 60, size 32, align 32, offset 0] [from ]
!153 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !154} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_buf_t]
!154 = metadata !{i32 786454, null, metadata !"ngx_buf_t", metadata !150, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !155} ; [ DW_TAG_typedef ] [ngx_buf_t] [line 18, size 0, align 0, offset 0] [from ngx_buf_s]
!155 = metadata !{i32 786451, null, metadata !"ngx_buf_s", metadata !150, i32 20, i64 416, i64 32, i32 0, i32 0, null, metadata !156, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_buf_s] [line 20, size 416, align 32, offset 0] [from ]
!156 = metadata !{metadata !157, metadata !158, metadata !159, metadata !164, metadata !165, metadata !166, metadata !167, metadata !169, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234}
!157 = metadata !{i32 786445, metadata !155, metadata !"pos", metadata !150, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [pos] [line 21, size 32, align 32, offset 0] [from ]
!158 = metadata !{i32 786445, metadata !155, metadata !"last", metadata !150, i32 22, i64 32, i64 32, i64 32, i32 0, metadata !87} ; [ DW_TAG_member ] [last] [line 22, size 32, align 32, offset 32] [from ]
!159 = metadata !{i32 786445, metadata !155, metadata !"file_pos", metadata !150, i32 23, i64 64, i64 32, i64 64, i32 0, metadata !160} ; [ DW_TAG_member ] [file_pos] [line 23, size 64, align 32, offset 64] [from off_t]
!160 = metadata !{i32 786454, null, metadata !"off_t", metadata !150, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !161} ; [ DW_TAG_typedef ] [off_t] [line 89, size 0, align 0, offset 0] [from __off64_t]
!161 = metadata !{i32 786454, null, metadata !"__off64_t", metadata !150, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !162} ; [ DW_TAG_typedef ] [__off64_t] [line 142, size 0, align 0, offset 0] [from __quad_t]
!162 = metadata !{i32 786454, null, metadata !"__quad_t", metadata !150, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !163} ; [ DW_TAG_typedef ] [__quad_t] [line 56, size 0, align 0, offset 0] [from long long int]
!163 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 32, offset 0, enc DW_ATE_signed]
!164 = metadata !{i32 786445, metadata !155, metadata !"file_last", metadata !150, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !160} ; [ DW_TAG_member ] [file_last] [line 24, size 64, align 32, offset 128] [from off_t]
!165 = metadata !{i32 786445, metadata !155, metadata !"start", metadata !150, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !87} ; [ DW_TAG_member ] [start] [line 26, size 32, align 32, offset 192] [from ]
!166 = metadata !{i32 786445, metadata !155, metadata !"end", metadata !150, i32 27, i64 32, i64 32, i64 224, i32 0, metadata !87} ; [ DW_TAG_member ] [end] [line 27, size 32, align 32, offset 224] [from ]
!167 = metadata !{i32 786445, metadata !155, metadata !"tag", metadata !150, i32 28, i64 32, i64 32, i64 256, i32 0, metadata !168} ; [ DW_TAG_member ] [tag] [line 28, size 32, align 32, offset 256] [from ngx_buf_tag_t]
!168 = metadata !{i32 786454, null, metadata !"ngx_buf_tag_t", metadata !150, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [ngx_buf_tag_t] [line 16, size 0, align 0, offset 0] [from ]
!169 = metadata !{i32 786445, metadata !155, metadata !"file", metadata !150, i32 29, i64 32, i64 32, i64 288, i32 0, metadata !170} ; [ DW_TAG_member ] [file] [line 29, size 32, align 32, offset 288] [from ]
!170 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_file_t]
!171 = metadata !{i32 786454, null, metadata !"ngx_file_t", metadata !150, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !172} ; [ DW_TAG_typedef ] [ngx_file_t] [line 21, size 0, align 0, offset 0] [from ngx_file_s]
!172 = metadata !{i32 786451, null, metadata !"ngx_file_s", metadata !173, i32 16, i64 1056, i64 32, i32 0, i32 0, null, metadata !174, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_file_s] [line 16, size 1056, align 32, offset 0] [from ]
!173 = metadata !{i32 786473, metadata !"src/core/ngx_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!174 = metadata !{metadata !175, metadata !176, metadata !177, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221}
!175 = metadata !{i32 786445, metadata !172, metadata !"fd", metadata !173, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !78} ; [ DW_TAG_member ] [fd] [line 17, size 32, align 32, offset 0] [from ngx_fd_t]
!176 = metadata !{i32 786445, metadata !172, metadata !"name", metadata !173, i32 18, i64 64, i64 32, i64 32, i32 0, metadata !80} ; [ DW_TAG_member ] [name] [line 18, size 64, align 32, offset 32] [from ngx_str_t]
!177 = metadata !{i32 786445, metadata !172, metadata !"info", metadata !173, i32 19, i64 768, i64 32, i64 96, i32 0, metadata !178} ; [ DW_TAG_member ] [info] [line 19, size 768, align 32, offset 96] [from ngx_file_info_t]
!178 = metadata !{i32 786454, null, metadata !"ngx_file_info_t", metadata !173, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !179} ; [ DW_TAG_typedef ] [ngx_file_info_t] [line 17, size 0, align 0, offset 0] [from stat]
!179 = metadata !{i32 786451, null, metadata !"stat", metadata !180, i32 46, i64 768, i64 32, i32 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_structure_type ] [stat] [line 46, size 768, align 32, offset 0] [from ]
!180 = metadata !{i32 786473, metadata !"/usr/include/bits/stat.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!181 = metadata !{metadata !182, metadata !186, metadata !188, metadata !190, metadata !192, metadata !194, metadata !196, metadata !198, metadata !199, metadata !200, metadata !201, metadata !204, metadata !206, metadata !213, metadata !214, metadata !215}
!182 = metadata !{i32 786445, metadata !179, metadata !"st_dev", metadata !180, i32 48, i64 64, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 32, offset 0] [from __dev_t]
!183 = metadata !{i32 786454, null, metadata !"__dev_t", metadata !180, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_typedef ] [__dev_t] [line 134, size 0, align 0, offset 0] [from __u_quad_t]
!184 = metadata !{i32 786454, null, metadata !"__u_quad_t", metadata !180, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !185} ; [ DW_TAG_typedef ] [__u_quad_t] [line 57, size 0, align 0, offset 0] [from long long unsigned int]
!185 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 32, offset 0, enc DW_ATE_unsigned]
!186 = metadata !{i32 786445, metadata !179, metadata !"__pad1", metadata !180, i32 50, i64 16, i64 16, i64 64, i32 0, metadata !187} ; [ DW_TAG_member ] [__pad1] [line 50, size 16, align 16, offset 64] [from unsigned short]
!187 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!188 = metadata !{i32 786445, metadata !179, metadata !"__st_ino", metadata !180, i32 55, i64 32, i64 32, i64 96, i32 0, metadata !189} ; [ DW_TAG_member ] [__st_ino] [line 55, size 32, align 32, offset 96] [from __ino_t]
!189 = metadata !{i32 786454, null, metadata !"__ino_t", metadata !180, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__ino_t] [line 137, size 0, align 0, offset 0] [from long unsigned int]
!190 = metadata !{i32 786445, metadata !179, metadata !"st_mode", metadata !180, i32 58, i64 32, i64 32, i64 128, i32 0, metadata !191} ; [ DW_TAG_member ] [st_mode] [line 58, size 32, align 32, offset 128] [from __mode_t]
!191 = metadata !{i32 786454, null, metadata !"__mode_t", metadata !180, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [__mode_t] [line 139, size 0, align 0, offset 0] [from unsigned int]
!192 = metadata !{i32 786445, metadata !179, metadata !"st_nlink", metadata !180, i32 59, i64 32, i64 32, i64 160, i32 0, metadata !193} ; [ DW_TAG_member ] [st_nlink] [line 59, size 32, align 32, offset 160] [from __nlink_t]
!193 = metadata !{i32 786454, null, metadata !"__nlink_t", metadata !180, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [__nlink_t] [line 140, size 0, align 0, offset 0] [from unsigned int]
!194 = metadata !{i32 786445, metadata !179, metadata !"st_uid", metadata !180, i32 64, i64 32, i64 32, i64 192, i32 0, metadata !195} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 192] [from __uid_t]
!195 = metadata !{i32 786454, null, metadata !"__uid_t", metadata !180, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [__uid_t] [line 135, size 0, align 0, offset 0] [from unsigned int]
!196 = metadata !{i32 786445, metadata !179, metadata !"st_gid", metadata !180, i32 65, i64 32, i64 32, i64 224, i32 0, metadata !197} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 224] [from __gid_t]
!197 = metadata !{i32 786454, null, metadata !"__gid_t", metadata !180, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [__gid_t] [line 136, size 0, align 0, offset 0] [from unsigned int]
!198 = metadata !{i32 786445, metadata !179, metadata !"st_rdev", metadata !180, i32 69, i64 64, i64 32, i64 256, i32 0, metadata !183} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 32, offset 256] [from __dev_t]
!199 = metadata !{i32 786445, metadata !179, metadata !"__pad2", metadata !180, i32 71, i64 16, i64 16, i64 320, i32 0, metadata !187} ; [ DW_TAG_member ] [__pad2] [line 71, size 16, align 16, offset 320] [from unsigned short]
!200 = metadata !{i32 786445, metadata !179, metadata !"st_size", metadata !180, i32 76, i64 64, i64 32, i64 352, i32 0, metadata !161} ; [ DW_TAG_member ] [st_size] [line 76, size 64, align 32, offset 352] [from __off64_t]
!201 = metadata !{i32 786445, metadata !179, metadata !"st_blksize", metadata !180, i32 78, i64 32, i64 32, i64 416, i32 0, metadata !202} ; [ DW_TAG_member ] [st_blksize] [line 78, size 32, align 32, offset 416] [from __blksize_t]
!202 = metadata !{i32 786454, null, metadata !"__blksize_t", metadata !180, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [__blksize_t] [line 164, size 0, align 0, offset 0] [from long int]
!203 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!204 = metadata !{i32 786445, metadata !179, metadata !"st_blocks", metadata !180, i32 82, i64 64, i64 32, i64 448, i32 0, metadata !205} ; [ DW_TAG_member ] [st_blocks] [line 82, size 64, align 32, offset 448] [from __blkcnt64_t]
!205 = metadata !{i32 786454, null, metadata !"__blkcnt64_t", metadata !180, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !162} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 170, size 0, align 0, offset 0] [from __quad_t]
!206 = metadata !{i32 786445, metadata !179, metadata !"st_atim", metadata !180, i32 91, i64 64, i64 32, i64 512, i32 0, metadata !207} ; [ DW_TAG_member ] [st_atim] [line 91, size 64, align 32, offset 512] [from timespec]
!207 = metadata !{i32 786451, null, metadata !"timespec", metadata !208, i32 120, i64 64, i64 32, i32 0, i32 0, null, metadata !209, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 64, align 32, offset 0] [from ]
!208 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!209 = metadata !{metadata !210, metadata !212}
!210 = metadata !{i32 786445, metadata !207, metadata !"tv_sec", metadata !208, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [tv_sec] [line 122, size 32, align 32, offset 0] [from __time_t]
!211 = metadata !{i32 786454, null, metadata !"__time_t", metadata !208, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !203} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!212 = metadata !{i32 786445, metadata !207, metadata !"tv_nsec", metadata !208, i32 123, i64 32, i64 32, i64 32, i32 0, metadata !203} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 32, align 32, offset 32] [from long int]
!213 = metadata !{i32 786445, metadata !179, metadata !"st_mtim", metadata !180, i32 92, i64 64, i64 32, i64 576, i32 0, metadata !207} ; [ DW_TAG_member ] [st_mtim] [line 92, size 64, align 32, offset 576] [from timespec]
!214 = metadata !{i32 786445, metadata !179, metadata !"st_ctim", metadata !180, i32 93, i64 64, i64 32, i64 640, i32 0, metadata !207} ; [ DW_TAG_member ] [st_ctim] [line 93, size 64, align 32, offset 640] [from timespec]
!215 = metadata !{i32 786445, metadata !179, metadata !"st_ino", metadata !180, i32 112, i64 64, i64 32, i64 704, i32 0, metadata !216} ; [ DW_TAG_member ] [st_ino] [line 112, size 64, align 32, offset 704] [from __ino64_t]
!216 = metadata !{i32 786454, null, metadata !"__ino64_t", metadata !180, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !184} ; [ DW_TAG_typedef ] [__ino64_t] [line 138, size 0, align 0, offset 0] [from __u_quad_t]
!217 = metadata !{i32 786445, metadata !172, metadata !"offset", metadata !173, i32 21, i64 64, i64 32, i64 864, i32 0, metadata !160} ; [ DW_TAG_member ] [offset] [line 21, size 64, align 32, offset 864] [from off_t]
!218 = metadata !{i32 786445, metadata !172, metadata !"sys_offset", metadata !173, i32 22, i64 64, i64 32, i64 928, i32 0, metadata !160} ; [ DW_TAG_member ] [sys_offset] [line 22, size 64, align 32, offset 928] [from off_t]
!219 = metadata !{i32 786445, metadata !172, metadata !"log", metadata !173, i32 24, i64 32, i64 32, i64 992, i32 0, metadata !65} ; [ DW_TAG_member ] [log] [line 24, size 32, align 32, offset 992] [from ]
!220 = metadata !{i32 786445, metadata !172, metadata !"valid_info", metadata !173, i32 30, i64 1, i64 32, i64 1024, i32 0, metadata !19} ; [ DW_TAG_member ] [valid_info] [line 30, size 1, align 32, offset 1024] [from unsigned int]
!221 = metadata !{i32 786445, metadata !172, metadata !"directio", metadata !173, i32 31, i64 1, i64 32, i64 1025, i32 0, metadata !19} ; [ DW_TAG_member ] [directio] [line 31, size 1, align 32, offset 1025] [from unsigned int]
!222 = metadata !{i32 786445, metadata !155, metadata !"shadow", metadata !150, i32 30, i64 32, i64 32, i64 320, i32 0, metadata !153} ; [ DW_TAG_member ] [shadow] [line 30, size 32, align 32, offset 320] [from ]
!223 = metadata !{i32 786445, metadata !155, metadata !"temporary", metadata !150, i32 34, i64 1, i64 32, i64 352, i32 0, metadata !19} ; [ DW_TAG_member ] [temporary] [line 34, size 1, align 32, offset 352] [from unsigned int]
!224 = metadata !{i32 786445, metadata !155, metadata !"memory", metadata !150, i32 40, i64 1, i64 32, i64 353, i32 0, metadata !19} ; [ DW_TAG_member ] [memory] [line 40, size 1, align 32, offset 353] [from unsigned int]
!225 = metadata !{i32 786445, metadata !155, metadata !"mmap", metadata !150, i32 43, i64 1, i64 32, i64 354, i32 0, metadata !19} ; [ DW_TAG_member ] [mmap] [line 43, size 1, align 32, offset 354] [from unsigned int]
!226 = metadata !{i32 786445, metadata !155, metadata !"recycled", metadata !150, i32 45, i64 1, i64 32, i64 355, i32 0, metadata !19} ; [ DW_TAG_member ] [recycled] [line 45, size 1, align 32, offset 355] [from unsigned int]
!227 = metadata !{i32 786445, metadata !155, metadata !"in_file", metadata !150, i32 46, i64 1, i64 32, i64 356, i32 0, metadata !19} ; [ DW_TAG_member ] [in_file] [line 46, size 1, align 32, offset 356] [from unsigned int]
!228 = metadata !{i32 786445, metadata !155, metadata !"flush", metadata !150, i32 47, i64 1, i64 32, i64 357, i32 0, metadata !19} ; [ DW_TAG_member ] [flush] [line 47, size 1, align 32, offset 357] [from unsigned int]
!229 = metadata !{i32 786445, metadata !155, metadata !"sync", metadata !150, i32 48, i64 1, i64 32, i64 358, i32 0, metadata !19} ; [ DW_TAG_member ] [sync] [line 48, size 1, align 32, offset 358] [from unsigned int]
!230 = metadata !{i32 786445, metadata !155, metadata !"last_buf", metadata !150, i32 49, i64 1, i64 32, i64 359, i32 0, metadata !19} ; [ DW_TAG_member ] [last_buf] [line 49, size 1, align 32, offset 359] [from unsigned int]
!231 = metadata !{i32 786445, metadata !155, metadata !"last_in_chain", metadata !150, i32 50, i64 1, i64 32, i64 360, i32 0, metadata !19} ; [ DW_TAG_member ] [last_in_chain] [line 50, size 1, align 32, offset 360] [from unsigned int]
!232 = metadata !{i32 786445, metadata !155, metadata !"last_shadow", metadata !150, i32 52, i64 1, i64 32, i64 361, i32 0, metadata !19} ; [ DW_TAG_member ] [last_shadow] [line 52, size 1, align 32, offset 361] [from unsigned int]
!233 = metadata !{i32 786445, metadata !155, metadata !"temp_file", metadata !150, i32 53, i64 1, i64 32, i64 362, i32 0, metadata !19} ; [ DW_TAG_member ] [temp_file] [line 53, size 1, align 32, offset 362] [from unsigned int]
!234 = metadata !{i32 786445, metadata !155, metadata !"num", metadata !150, i32 55, i64 32, i64 32, i64 384, i32 0, metadata !11} ; [ DW_TAG_member ] [num] [line 55, size 32, align 32, offset 384] [from int]
!235 = metadata !{i32 786445, metadata !149, metadata !"next", metadata !150, i32 61, i64 32, i64 32, i64 32, i32 0, metadata !236} ; [ DW_TAG_member ] [next] [line 61, size 32, align 32, offset 32] [from ]
!236 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !237} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!237 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !150, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!238 = metadata !{i32 786445, metadata !23, metadata !"send_chain", metadata !24, i32 123, i64 32, i64 32, i64 224, i32 0, metadata !239} ; [ DW_TAG_member ] [send_chain] [line 123, size 32, align 32, offset 224] [from ngx_send_chain_pt]
!239 = metadata !{i32 786454, null, metadata !"ngx_send_chain_pt", metadata !24, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !240} ; [ DW_TAG_typedef ] [ngx_send_chain_pt] [line 22, size 0, align 0, offset 0] [from ]
!240 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !241} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!241 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !242, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!242 = metadata !{metadata !147, metadata !138, metadata !147, metadata !160}
!243 = metadata !{i32 786445, metadata !23, metadata !"listening", metadata !24, i32 125, i64 32, i64 32, i64 256, i32 0, metadata !244} ; [ DW_TAG_member ] [listening] [line 125, size 32, align 32, offset 256] [from ]
!244 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !245} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_listening_t]
!245 = metadata !{i32 786454, null, metadata !"ngx_listening_t", metadata !24, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_typedef ] [ngx_listening_t] [line 16, size 0, align 0, offset 0] [from ngx_listening_s]
!246 = metadata !{i32 786451, null, metadata !"ngx_listening_s", metadata !24, i32 18, i64 896, i64 32, i32 0, i32 0, null, metadata !247, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_listening_s] [line 18, size 896, align 32, offset 0] [from ]
!247 = metadata !{metadata !248, metadata !249, metadata !260, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !271, metadata !272, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !282, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !294, metadata !295, metadata !296, metadata !297, metadata !298, metadata !299}
!248 = metadata !{i32 786445, metadata !246, metadata !"fd", metadata !24, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !130} ; [ DW_TAG_member ] [fd] [line 19, size 32, align 32, offset 0] [from ngx_socket_t]
!249 = metadata !{i32 786445, metadata !246, metadata !"sockaddr", metadata !24, i32 21, i64 32, i64 32, i64 32, i32 0, metadata !250} ; [ DW_TAG_member ] [sockaddr] [line 21, size 32, align 32, offset 32] [from ]
!250 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !251} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from sockaddr]
!251 = metadata !{i32 786451, null, metadata !"sockaddr", metadata !252, i32 174, i64 128, i64 16, i32 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_structure_type ] [sockaddr] [line 174, size 128, align 16, offset 0] [from ]
!252 = metadata !{i32 786473, metadata !"/usr/include/bits/socket.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!253 = metadata !{metadata !254, metadata !256}
!254 = metadata !{i32 786445, metadata !251, metadata !"sa_family", metadata !252, i32 176, i64 16, i64 16, i64 0, i32 0, metadata !255} ; [ DW_TAG_member ] [sa_family] [line 176, size 16, align 16, offset 0] [from sa_family_t]
!255 = metadata !{i32 786454, null, metadata !"sa_family_t", metadata !252, i32 29, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_typedef ] [sa_family_t] [line 29, size 0, align 0, offset 0] [from unsigned short]
!256 = metadata !{i32 786445, metadata !251, metadata !"sa_data", metadata !252, i32 177, i64 112, i64 8, i64 16, i32 0, metadata !257} ; [ DW_TAG_member ] [sa_data] [line 177, size 112, align 8, offset 16] [from ]
!257 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 112, i64 8, i32 0, i32 0, metadata !107, metadata !258, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 112, align 8, offset 0] [from char]
!258 = metadata !{metadata !259}
!259 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 13]
!260 = metadata !{i32 786445, metadata !246, metadata !"socklen", metadata !24, i32 22, i64 32, i64 32, i64 64, i32 0, metadata !261} ; [ DW_TAG_member ] [socklen] [line 22, size 32, align 32, offset 64] [from socklen_t]
!261 = metadata !{i32 786454, null, metadata !"socklen_t", metadata !24, i32 275, i64 0, i64 0, i64 0, i32 0, metadata !262} ; [ DW_TAG_typedef ] [socklen_t] [line 275, size 0, align 0, offset 0] [from __socklen_t]
!262 = metadata !{i32 786454, null, metadata !"__socklen_t", metadata !24, i32 192, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [__socklen_t] [line 192, size 0, align 0, offset 0] [from unsigned int]
!263 = metadata !{i32 786445, metadata !246, metadata !"addr_text_max_len", metadata !24, i32 23, i64 32, i64 32, i64 96, i32 0, metadata !85} ; [ DW_TAG_member ] [addr_text_max_len] [line 23, size 32, align 32, offset 96] [from size_t]
!264 = metadata !{i32 786445, metadata !246, metadata !"addr_text", metadata !24, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !80} ; [ DW_TAG_member ] [addr_text] [line 24, size 64, align 32, offset 128] [from ngx_str_t]
!265 = metadata !{i32 786445, metadata !246, metadata !"type", metadata !24, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !11} ; [ DW_TAG_member ] [type] [line 26, size 32, align 32, offset 192] [from int]
!266 = metadata !{i32 786445, metadata !246, metadata !"backlog", metadata !24, i32 28, i64 32, i64 32, i64 224, i32 0, metadata !11} ; [ DW_TAG_member ] [backlog] [line 28, size 32, align 32, offset 224] [from int]
!267 = metadata !{i32 786445, metadata !246, metadata !"rcvbuf", metadata !24, i32 29, i64 32, i64 32, i64 256, i32 0, metadata !11} ; [ DW_TAG_member ] [rcvbuf] [line 29, size 32, align 32, offset 256] [from int]
!268 = metadata !{i32 786445, metadata !246, metadata !"sndbuf", metadata !24, i32 30, i64 32, i64 32, i64 288, i32 0, metadata !11} ; [ DW_TAG_member ] [sndbuf] [line 30, size 32, align 32, offset 288] [from int]
!269 = metadata !{i32 786445, metadata !246, metadata !"keepidle", metadata !24, i32 32, i64 32, i64 32, i64 320, i32 0, metadata !11} ; [ DW_TAG_member ] [keepidle] [line 32, size 32, align 32, offset 320] [from int]
!270 = metadata !{i32 786445, metadata !246, metadata !"keepintvl", metadata !24, i32 33, i64 32, i64 32, i64 352, i32 0, metadata !11} ; [ DW_TAG_member ] [keepintvl] [line 33, size 32, align 32, offset 352] [from int]
!271 = metadata !{i32 786445, metadata !246, metadata !"keepcnt", metadata !24, i32 34, i64 32, i64 32, i64 384, i32 0, metadata !11} ; [ DW_TAG_member ] [keepcnt] [line 34, size 32, align 32, offset 384] [from int]
!272 = metadata !{i32 786445, metadata !246, metadata !"handler", metadata !24, i32 38, i64 32, i64 32, i64 416, i32 0, metadata !273} ; [ DW_TAG_member ] [handler] [line 38, size 32, align 32, offset 416] [from ngx_connection_handler_pt]
!273 = metadata !{i32 786454, null, metadata !"ngx_connection_handler_pt", metadata !24, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_typedef ] [ngx_connection_handler_pt] [line 27, size 0, align 0, offset 0] [from ]
!274 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !275} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!276 = metadata !{null, metadata !138}
!277 = metadata !{i32 786445, metadata !246, metadata !"servers", metadata !24, i32 40, i64 32, i64 32, i64 448, i32 0, metadata !27} ; [ DW_TAG_member ] [servers] [line 40, size 32, align 32, offset 448] [from ]
!278 = metadata !{i32 786445, metadata !246, metadata !"log", metadata !24, i32 42, i64 192, i64 32, i64 480, i32 0, metadata !66} ; [ DW_TAG_member ] [log] [line 42, size 192, align 32, offset 480] [from ngx_log_t]
!279 = metadata !{i32 786445, metadata !246, metadata !"logp", metadata !24, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !65} ; [ DW_TAG_member ] [logp] [line 43, size 32, align 32, offset 672] [from ]
!280 = metadata !{i32 786445, metadata !246, metadata !"pool_size", metadata !24, i32 45, i64 32, i64 32, i64 704, i32 0, metadata !85} ; [ DW_TAG_member ] [pool_size] [line 45, size 32, align 32, offset 704] [from size_t]
!281 = metadata !{i32 786445, metadata !246, metadata !"post_accept_buffer_size", metadata !24, i32 47, i64 32, i64 32, i64 736, i32 0, metadata !85} ; [ DW_TAG_member ] [post_accept_buffer_size] [line 47, size 32, align 32, offset 736] [from size_t]
!282 = metadata !{i32 786445, metadata !246, metadata !"post_accept_timeout", metadata !24, i32 49, i64 32, i64 32, i64 768, i32 0, metadata !283} ; [ DW_TAG_member ] [post_accept_timeout] [line 49, size 32, align 32, offset 768] [from ngx_msec_t]
!283 = metadata !{i32 786454, null, metadata !"ngx_msec_t", metadata !24, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ] [ngx_msec_t] [line 16, size 0, align 0, offset 0] [from ngx_rbtree_key_t]
!284 = metadata !{i32 786445, metadata !246, metadata !"previous", metadata !24, i32 51, i64 32, i64 32, i64 800, i32 0, metadata !244} ; [ DW_TAG_member ] [previous] [line 51, size 32, align 32, offset 800] [from ]
!285 = metadata !{i32 786445, metadata !246, metadata !"connection", metadata !24, i32 52, i64 32, i64 32, i64 832, i32 0, metadata !138} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 832] [from ]
!286 = metadata !{i32 786445, metadata !246, metadata !"open", metadata !24, i32 54, i64 1, i64 32, i64 864, i32 0, metadata !19} ; [ DW_TAG_member ] [open] [line 54, size 1, align 32, offset 864] [from unsigned int]
!287 = metadata !{i32 786445, metadata !246, metadata !"remain", metadata !24, i32 55, i64 1, i64 32, i64 865, i32 0, metadata !19} ; [ DW_TAG_member ] [remain] [line 55, size 1, align 32, offset 865] [from unsigned int]
!288 = metadata !{i32 786445, metadata !246, metadata !"ignore", metadata !24, i32 56, i64 1, i64 32, i64 866, i32 0, metadata !19} ; [ DW_TAG_member ] [ignore] [line 56, size 1, align 32, offset 866] [from unsigned int]
!289 = metadata !{i32 786445, metadata !246, metadata !"bound", metadata !24, i32 58, i64 1, i64 32, i64 867, i32 0, metadata !19} ; [ DW_TAG_member ] [bound] [line 58, size 1, align 32, offset 867] [from unsigned int]
!290 = metadata !{i32 786445, metadata !246, metadata !"inherited", metadata !24, i32 59, i64 1, i64 32, i64 868, i32 0, metadata !19} ; [ DW_TAG_member ] [inherited] [line 59, size 1, align 32, offset 868] [from unsigned int]
!291 = metadata !{i32 786445, metadata !246, metadata !"nonblocking_accept", metadata !24, i32 60, i64 1, i64 32, i64 869, i32 0, metadata !19} ; [ DW_TAG_member ] [nonblocking_accept] [line 60, size 1, align 32, offset 869] [from unsigned int]
!292 = metadata !{i32 786445, metadata !246, metadata !"listen", metadata !24, i32 61, i64 1, i64 32, i64 870, i32 0, metadata !19} ; [ DW_TAG_member ] [listen] [line 61, size 1, align 32, offset 870] [from unsigned int]
!293 = metadata !{i32 786445, metadata !246, metadata !"nonblocking", metadata !24, i32 62, i64 1, i64 32, i64 871, i32 0, metadata !19} ; [ DW_TAG_member ] [nonblocking] [line 62, size 1, align 32, offset 871] [from unsigned int]
!294 = metadata !{i32 786445, metadata !246, metadata !"shared", metadata !24, i32 63, i64 1, i64 32, i64 872, i32 0, metadata !19} ; [ DW_TAG_member ] [shared] [line 63, size 1, align 32, offset 872] [from unsigned int]
!295 = metadata !{i32 786445, metadata !246, metadata !"addr_ntop", metadata !24, i32 64, i64 1, i64 32, i64 873, i32 0, metadata !19} ; [ DW_TAG_member ] [addr_ntop] [line 64, size 1, align 32, offset 873] [from unsigned int]
!296 = metadata !{i32 786445, metadata !246, metadata !"keepalive", metadata !24, i32 69, i64 2, i64 32, i64 874, i32 0, metadata !19} ; [ DW_TAG_member ] [keepalive] [line 69, size 2, align 32, offset 874] [from unsigned int]
!297 = metadata !{i32 786445, metadata !246, metadata !"deferred_accept", metadata !24, i32 72, i64 1, i64 32, i64 876, i32 0, metadata !19} ; [ DW_TAG_member ] [deferred_accept] [line 72, size 1, align 32, offset 876] [from unsigned int]
!298 = metadata !{i32 786445, metadata !246, metadata !"delete_deferred", metadata !24, i32 73, i64 1, i64 32, i64 877, i32 0, metadata !19} ; [ DW_TAG_member ] [delete_deferred] [line 73, size 1, align 32, offset 877] [from unsigned int]
!299 = metadata !{i32 786445, metadata !246, metadata !"add_deferred", metadata !24, i32 74, i64 1, i64 32, i64 878, i32 0, metadata !19} ; [ DW_TAG_member ] [add_deferred] [line 74, size 1, align 32, offset 878] [from unsigned int]
!300 = metadata !{i32 786445, metadata !23, metadata !"sent", metadata !24, i32 127, i64 64, i64 32, i64 288, i32 0, metadata !160} ; [ DW_TAG_member ] [sent] [line 127, size 64, align 32, offset 288] [from off_t]
!301 = metadata !{i32 786445, metadata !23, metadata !"log", metadata !24, i32 129, i64 32, i64 32, i64 352, i32 0, metadata !65} ; [ DW_TAG_member ] [log] [line 129, size 32, align 32, offset 352] [from ]
!302 = metadata !{i32 786445, metadata !23, metadata !"pool", metadata !24, i32 131, i64 32, i64 32, i64 384, i32 0, metadata !303} ; [ DW_TAG_member ] [pool] [line 131, size 32, align 32, offset 384] [from ]
!303 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !304} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!304 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !24, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !305} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!305 = metadata !{i32 786451, null, metadata !"ngx_pool_s", metadata !306, i32 57, i64 320, i64 32, i32 0, i32 0, null, metadata !307, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_s] [line 57, size 320, align 32, offset 0] [from ]
!306 = metadata !{i32 786473, metadata !"src/core/ngx_palloc.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!307 = metadata !{metadata !308, metadata !318, metadata !319, metadata !320, metadata !321, metadata !328, metadata !340}
!308 = metadata !{i32 786445, metadata !305, metadata !"d", metadata !306, i32 58, i64 128, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_member ] [d] [line 58, size 128, align 32, offset 0] [from ngx_pool_data_t]
!309 = metadata !{i32 786454, null, metadata !"ngx_pool_data_t", metadata !306, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !310} ; [ DW_TAG_typedef ] [ngx_pool_data_t] [line 54, size 0, align 0, offset 0] [from ]
!310 = metadata !{i32 786451, null, metadata !"", metadata !306, i32 49, i64 128, i64 32, i32 0, i32 0, null, metadata !311, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 49, size 128, align 32, offset 0] [from ]
!311 = metadata !{metadata !312, metadata !313, metadata !314, metadata !317}
!312 = metadata !{i32 786445, metadata !310, metadata !"last", metadata !306, i32 50, i64 32, i64 32, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [last] [line 50, size 32, align 32, offset 0] [from ]
!313 = metadata !{i32 786445, metadata !310, metadata !"end", metadata !306, i32 51, i64 32, i64 32, i64 32, i32 0, metadata !87} ; [ DW_TAG_member ] [end] [line 51, size 32, align 32, offset 32] [from ]
!314 = metadata !{i32 786445, metadata !310, metadata !"next", metadata !306, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !315} ; [ DW_TAG_member ] [next] [line 52, size 32, align 32, offset 64] [from ]
!315 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !316} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!316 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !306, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !305} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!317 = metadata !{i32 786445, metadata !310, metadata !"failed", metadata !306, i32 53, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [failed] [line 53, size 32, align 32, offset 96] [from ngx_uint_t]
!318 = metadata !{i32 786445, metadata !305, metadata !"max", metadata !306, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [max] [line 59, size 32, align 32, offset 128] [from size_t]
!319 = metadata !{i32 786445, metadata !305, metadata !"current", metadata !306, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !315} ; [ DW_TAG_member ] [current] [line 60, size 32, align 32, offset 160] [from ]
!320 = metadata !{i32 786445, metadata !305, metadata !"chain", metadata !306, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !147} ; [ DW_TAG_member ] [chain] [line 61, size 32, align 32, offset 192] [from ]
!321 = metadata !{i32 786445, metadata !305, metadata !"large", metadata !306, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !322} ; [ DW_TAG_member ] [large] [line 62, size 32, align 32, offset 224] [from ]
!322 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !323} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_large_t]
!323 = metadata !{i32 786454, null, metadata !"ngx_pool_large_t", metadata !306, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !324} ; [ DW_TAG_typedef ] [ngx_pool_large_t] [line 41, size 0, align 0, offset 0] [from ngx_pool_large_s]
!324 = metadata !{i32 786451, null, metadata !"ngx_pool_large_s", metadata !306, i32 43, i64 64, i64 32, i32 0, i32 0, null, metadata !325, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_large_s] [line 43, size 64, align 32, offset 0] [from ]
!325 = metadata !{metadata !326, metadata !327}
!326 = metadata !{i32 786445, metadata !324, metadata !"next", metadata !306, i32 44, i64 32, i64 32, i64 0, i32 0, metadata !322} ; [ DW_TAG_member ] [next] [line 44, size 32, align 32, offset 0] [from ]
!327 = metadata !{i32 786445, metadata !324, metadata !"alloc", metadata !306, i32 45, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [alloc] [line 45, size 32, align 32, offset 32] [from ]
!328 = metadata !{i32 786445, metadata !305, metadata !"cleanup", metadata !306, i32 63, i64 32, i64 32, i64 256, i32 0, metadata !329} ; [ DW_TAG_member ] [cleanup] [line 63, size 32, align 32, offset 256] [from ]
!329 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !330} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_cleanup_t]
!330 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_t", metadata !306, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !331} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_t] [line 32, size 0, align 0, offset 0] [from ngx_pool_cleanup_s]
!331 = metadata !{i32 786451, null, metadata !"ngx_pool_cleanup_s", metadata !306, i32 34, i64 96, i64 32, i32 0, i32 0, null, metadata !332, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_cleanup_s] [line 34, size 96, align 32, offset 0] [from ]
!332 = metadata !{metadata !333, metadata !338, metadata !339}
!333 = metadata !{i32 786445, metadata !331, metadata !"handler", metadata !306, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !334} ; [ DW_TAG_member ] [handler] [line 35, size 32, align 32, offset 0] [from ngx_pool_cleanup_pt]
!334 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_pt", metadata !306, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !335} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_pt] [line 30, size 0, align 0, offset 0] [from ]
!335 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !336} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!336 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !337, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!337 = metadata !{null, metadata !27}
!338 = metadata !{i32 786445, metadata !331, metadata !"data", metadata !306, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!339 = metadata !{i32 786445, metadata !331, metadata !"next", metadata !306, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !329} ; [ DW_TAG_member ] [next] [line 37, size 32, align 32, offset 64] [from ]
!340 = metadata !{i32 786445, metadata !305, metadata !"log", metadata !306, i32 64, i64 32, i64 32, i64 288, i32 0, metadata !65} ; [ DW_TAG_member ] [log] [line 64, size 32, align 32, offset 288] [from ]
!341 = metadata !{i32 786445, metadata !23, metadata !"sockaddr", metadata !24, i32 133, i64 32, i64 32, i64 416, i32 0, metadata !250} ; [ DW_TAG_member ] [sockaddr] [line 133, size 32, align 32, offset 416] [from ]
!342 = metadata !{i32 786445, metadata !23, metadata !"socklen", metadata !24, i32 134, i64 32, i64 32, i64 448, i32 0, metadata !261} ; [ DW_TAG_member ] [socklen] [line 134, size 32, align 32, offset 448] [from socklen_t]
!343 = metadata !{i32 786445, metadata !23, metadata !"addr_text", metadata !24, i32 135, i64 64, i64 32, i64 480, i32 0, metadata !80} ; [ DW_TAG_member ] [addr_text] [line 135, size 64, align 32, offset 480] [from ngx_str_t]
!344 = metadata !{i32 786445, metadata !23, metadata !"local_sockaddr", metadata !24, i32 141, i64 32, i64 32, i64 544, i32 0, metadata !250} ; [ DW_TAG_member ] [local_sockaddr] [line 141, size 32, align 32, offset 544] [from ]
!345 = metadata !{i32 786445, metadata !23, metadata !"buffer", metadata !24, i32 143, i64 32, i64 32, i64 576, i32 0, metadata !153} ; [ DW_TAG_member ] [buffer] [line 143, size 32, align 32, offset 576] [from ]
!346 = metadata !{i32 786445, metadata !23, metadata !"queue", metadata !24, i32 145, i64 64, i64 32, i64 608, i32 0, metadata !347} ; [ DW_TAG_member ] [queue] [line 145, size 64, align 32, offset 608] [from ngx_queue_t]
!347 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !24, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !348} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!348 = metadata !{i32 786451, null, metadata !"ngx_queue_s", metadata !349, i32 18, i64 64, i64 32, i32 0, i32 0, null, metadata !350, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_queue_s] [line 18, size 64, align 32, offset 0] [from ]
!349 = metadata !{i32 786473, metadata !"src/core/ngx_queue.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!350 = metadata !{metadata !351, metadata !354}
!351 = metadata !{i32 786445, metadata !348, metadata !"prev", metadata !349, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !352} ; [ DW_TAG_member ] [prev] [line 19, size 32, align 32, offset 0] [from ]
!352 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !353} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_queue_t]
!353 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !349, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !348} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!354 = metadata !{i32 786445, metadata !348, metadata !"next", metadata !349, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !352} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!355 = metadata !{i32 786445, metadata !23, metadata !"number", metadata !24, i32 147, i64 32, i64 32, i64 672, i32 0, metadata !95} ; [ DW_TAG_member ] [number] [line 147, size 32, align 32, offset 672] [from ngx_atomic_uint_t]
!356 = metadata !{i32 786445, metadata !23, metadata !"requests", metadata !24, i32 149, i64 32, i64 32, i64 704, i32 0, metadata !62} ; [ DW_TAG_member ] [requests] [line 149, size 32, align 32, offset 704] [from ngx_uint_t]
!357 = metadata !{i32 786445, metadata !23, metadata !"buffered", metadata !24, i32 151, i64 8, i64 32, i64 736, i32 0, metadata !19} ; [ DW_TAG_member ] [buffered] [line 151, size 8, align 32, offset 736] [from unsigned int]
!358 = metadata !{i32 786445, metadata !23, metadata !"log_error", metadata !24, i32 153, i64 3, i64 32, i64 744, i32 0, metadata !19} ; [ DW_TAG_member ] [log_error] [line 153, size 3, align 32, offset 744] [from unsigned int]
!359 = metadata !{i32 786445, metadata !23, metadata !"single_connection", metadata !24, i32 155, i64 1, i64 32, i64 747, i32 0, metadata !19} ; [ DW_TAG_member ] [single_connection] [line 155, size 1, align 32, offset 747] [from unsigned int]
!360 = metadata !{i32 786445, metadata !23, metadata !"unexpected_eof", metadata !24, i32 156, i64 1, i64 32, i64 748, i32 0, metadata !19} ; [ DW_TAG_member ] [unexpected_eof] [line 156, size 1, align 32, offset 748] [from unsigned int]
!361 = metadata !{i32 786445, metadata !23, metadata !"timedout", metadata !24, i32 157, i64 1, i64 32, i64 749, i32 0, metadata !19} ; [ DW_TAG_member ] [timedout] [line 157, size 1, align 32, offset 749] [from unsigned int]
!362 = metadata !{i32 786445, metadata !23, metadata !"error", metadata !24, i32 158, i64 1, i64 32, i64 750, i32 0, metadata !19} ; [ DW_TAG_member ] [error] [line 158, size 1, align 32, offset 750] [from unsigned int]
!363 = metadata !{i32 786445, metadata !23, metadata !"destroyed", metadata !24, i32 159, i64 1, i64 32, i64 751, i32 0, metadata !19} ; [ DW_TAG_member ] [destroyed] [line 159, size 1, align 32, offset 751] [from unsigned int]
!364 = metadata !{i32 786445, metadata !23, metadata !"idle", metadata !24, i32 161, i64 1, i64 32, i64 752, i32 0, metadata !19} ; [ DW_TAG_member ] [idle] [line 161, size 1, align 32, offset 752] [from unsigned int]
!365 = metadata !{i32 786445, metadata !23, metadata !"reusable", metadata !24, i32 162, i64 1, i64 32, i64 753, i32 0, metadata !19} ; [ DW_TAG_member ] [reusable] [line 162, size 1, align 32, offset 753] [from unsigned int]
!366 = metadata !{i32 786445, metadata !23, metadata !"close", metadata !24, i32 163, i64 1, i64 32, i64 754, i32 0, metadata !19} ; [ DW_TAG_member ] [close] [line 163, size 1, align 32, offset 754] [from unsigned int]
!367 = metadata !{i32 786445, metadata !23, metadata !"sendfile", metadata !24, i32 165, i64 1, i64 32, i64 755, i32 0, metadata !19} ; [ DW_TAG_member ] [sendfile] [line 165, size 1, align 32, offset 755] [from unsigned int]
!368 = metadata !{i32 786445, metadata !23, metadata !"sndlowat", metadata !24, i32 166, i64 1, i64 32, i64 756, i32 0, metadata !19} ; [ DW_TAG_member ] [sndlowat] [line 166, size 1, align 32, offset 756] [from unsigned int]
!369 = metadata !{i32 786445, metadata !23, metadata !"tcp_nodelay", metadata !24, i32 167, i64 2, i64 32, i64 757, i32 0, metadata !19} ; [ DW_TAG_member ] [tcp_nodelay] [line 167, size 2, align 32, offset 757] [from unsigned int]
!370 = metadata !{i32 786445, metadata !23, metadata !"tcp_nopush", metadata !24, i32 168, i64 2, i64 32, i64 759, i32 0, metadata !19} ; [ DW_TAG_member ] [tcp_nopush] [line 168, size 2, align 32, offset 759] [from unsigned int]
!371 = metadata !{i32 786445, metadata !14, metadata !"ctx", metadata !15, i32 359, i64 32, i64 32, i64 64, i32 0, metadata !372} ; [ DW_TAG_member ] [ctx] [line 359, size 32, align 32, offset 64] [from ]
!372 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!373 = metadata !{i32 786445, metadata !14, metadata !"main_conf", metadata !15, i32 360, i64 32, i64 32, i64 96, i32 0, metadata !372} ; [ DW_TAG_member ] [main_conf] [line 360, size 32, align 32, offset 96] [from ]
!374 = metadata !{i32 786445, metadata !14, metadata !"srv_conf", metadata !15, i32 361, i64 32, i64 32, i64 128, i32 0, metadata !372} ; [ DW_TAG_member ] [srv_conf] [line 361, size 32, align 32, offset 128] [from ]
!375 = metadata !{i32 786445, metadata !14, metadata !"loc_conf", metadata !15, i32 362, i64 32, i64 32, i64 160, i32 0, metadata !372} ; [ DW_TAG_member ] [loc_conf] [line 362, size 32, align 32, offset 160] [from ]
!376 = metadata !{i32 786445, metadata !14, metadata !"read_event_handler", metadata !15, i32 364, i64 32, i64 32, i64 192, i32 0, metadata !377} ; [ DW_TAG_member ] [read_event_handler] [line 364, size 32, align 32, offset 192] [from ngx_http_event_handler_pt]
!377 = metadata !{i32 786454, null, metadata !"ngx_http_event_handler_pt", metadata !15, i32 351, i64 0, i64 0, i64 0, i32 0, metadata !378} ; [ DW_TAG_typedef ] [ngx_http_event_handler_pt] [line 351, size 0, align 0, offset 0] [from ]
!378 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !379} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!379 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !380, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!380 = metadata !{null, metadata !381}
!381 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !382} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!382 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !15, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!383 = metadata !{i32 786445, metadata !14, metadata !"write_event_handler", metadata !15, i32 365, i64 32, i64 32, i64 224, i32 0, metadata !377} ; [ DW_TAG_member ] [write_event_handler] [line 365, size 32, align 32, offset 224] [from ngx_http_event_handler_pt]
!384 = metadata !{i32 786445, metadata !14, metadata !"cache", metadata !15, i32 368, i64 32, i64 32, i64 256, i32 0, metadata !385} ; [ DW_TAG_member ] [cache] [line 368, size 32, align 32, offset 256] [from ]
!385 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !386} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cache_t]
!386 = metadata !{i32 786454, null, metadata !"ngx_http_cache_t", metadata !15, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !387} ; [ DW_TAG_typedef ] [ngx_http_cache_t] [line 18, size 0, align 0, offset 0] [from ngx_http_cache_s]
!387 = metadata !{i32 786451, null, metadata !"ngx_http_cache_s", metadata !388, i32 58, i64 2432, i64 32, i32 0, i32 0, null, metadata !389, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cache_s] [line 58, size 2432, align 32, offset 0] [from ]
!388 = metadata !{i32 786473, metadata !"src/http/ngx_http_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!389 = metadata !{metadata !390, metadata !391, metadata !401, metadata !402, metadata !406, metadata !409, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !550, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !581}
!390 = metadata !{i32 786445, metadata !387, metadata !"file", metadata !388, i32 59, i64 1056, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [file] [line 59, size 1056, align 32, offset 0] [from ngx_file_t]
!391 = metadata !{i32 786445, metadata !387, metadata !"keys", metadata !388, i32 60, i64 160, i64 32, i64 1056, i32 0, metadata !392} ; [ DW_TAG_member ] [keys] [line 60, size 160, align 32, offset 1056] [from ngx_array_t]
!392 = metadata !{i32 786454, null, metadata !"ngx_array_t", metadata !388, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !393} ; [ DW_TAG_typedef ] [ngx_array_t] [line 18, size 0, align 0, offset 0] [from ngx_array_s]
!393 = metadata !{i32 786451, null, metadata !"ngx_array_s", metadata !394, i32 16, i64 160, i64 32, i32 0, i32 0, null, metadata !395, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_array_s] [line 16, size 160, align 32, offset 0] [from ]
!394 = metadata !{i32 786473, metadata !"src/core/ngx_array.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!395 = metadata !{metadata !396, metadata !397, metadata !398, metadata !399, metadata !400}
!396 = metadata !{i32 786445, metadata !393, metadata !"elts", metadata !394, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [elts] [line 17, size 32, align 32, offset 0] [from ]
!397 = metadata !{i32 786445, metadata !393, metadata !"nelts", metadata !394, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [nelts] [line 18, size 32, align 32, offset 32] [from ngx_uint_t]
!398 = metadata !{i32 786445, metadata !393, metadata !"size", metadata !394, i32 19, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [size] [line 19, size 32, align 32, offset 64] [from size_t]
!399 = metadata !{i32 786445, metadata !393, metadata !"nalloc", metadata !394, i32 20, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [nalloc] [line 20, size 32, align 32, offset 96] [from ngx_uint_t]
!400 = metadata !{i32 786445, metadata !393, metadata !"pool", metadata !394, i32 21, i64 32, i64 32, i64 128, i32 0, metadata !303} ; [ DW_TAG_member ] [pool] [line 21, size 32, align 32, offset 128] [from ]
!401 = metadata !{i32 786445, metadata !387, metadata !"crc32", metadata !388, i32 61, i64 32, i64 32, i64 1216, i32 0, metadata !18} ; [ DW_TAG_member ] [crc32] [line 61, size 32, align 32, offset 1216] [from uint32_t]
!402 = metadata !{i32 786445, metadata !387, metadata !"key", metadata !388, i32 62, i64 128, i64 8, i64 1248, i32 0, metadata !403} ; [ DW_TAG_member ] [key] [line 62, size 128, align 8, offset 1248] [from ]
!403 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !88, metadata !404, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from u_char]
!404 = metadata !{metadata !405}
!405 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!406 = metadata !{i32 786445, metadata !387, metadata !"uniq", metadata !388, i32 64, i64 64, i64 32, i64 1376, i32 0, metadata !407} ; [ DW_TAG_member ] [uniq] [line 64, size 64, align 32, offset 1376] [from ngx_file_uniq_t]
!407 = metadata !{i32 786454, null, metadata !"ngx_file_uniq_t", metadata !388, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !408} ; [ DW_TAG_typedef ] [ngx_file_uniq_t] [line 18, size 0, align 0, offset 0] [from ino_t]
!408 = metadata !{i32 786454, null, metadata !"ino_t", metadata !388, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !216} ; [ DW_TAG_typedef ] [ino_t] [line 51, size 0, align 0, offset 0] [from __ino64_t]
!409 = metadata !{i32 786445, metadata !387, metadata !"valid_sec", metadata !388, i32 65, i64 32, i64 32, i64 1440, i32 0, metadata !410} ; [ DW_TAG_member ] [valid_sec] [line 65, size 32, align 32, offset 1440] [from time_t]
!410 = metadata !{i32 786454, null, metadata !"time_t", metadata !388, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !211} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!411 = metadata !{i32 786445, metadata !387, metadata !"last_modified", metadata !388, i32 66, i64 32, i64 32, i64 1472, i32 0, metadata !410} ; [ DW_TAG_member ] [last_modified] [line 66, size 32, align 32, offset 1472] [from time_t]
!412 = metadata !{i32 786445, metadata !387, metadata !"date", metadata !388, i32 67, i64 32, i64 32, i64 1504, i32 0, metadata !410} ; [ DW_TAG_member ] [date] [line 67, size 32, align 32, offset 1504] [from time_t]
!413 = metadata !{i32 786445, metadata !387, metadata !"header_start", metadata !388, i32 69, i64 32, i64 32, i64 1536, i32 0, metadata !85} ; [ DW_TAG_member ] [header_start] [line 69, size 32, align 32, offset 1536] [from size_t]
!414 = metadata !{i32 786445, metadata !387, metadata !"body_start", metadata !388, i32 70, i64 32, i64 32, i64 1568, i32 0, metadata !85} ; [ DW_TAG_member ] [body_start] [line 70, size 32, align 32, offset 1568] [from size_t]
!415 = metadata !{i32 786445, metadata !387, metadata !"length", metadata !388, i32 71, i64 64, i64 32, i64 1600, i32 0, metadata !160} ; [ DW_TAG_member ] [length] [line 71, size 64, align 32, offset 1600] [from off_t]
!416 = metadata !{i32 786445, metadata !387, metadata !"fs_size", metadata !388, i32 72, i64 64, i64 32, i64 1664, i32 0, metadata !160} ; [ DW_TAG_member ] [fs_size] [line 72, size 64, align 32, offset 1664] [from off_t]
!417 = metadata !{i32 786445, metadata !387, metadata !"min_uses", metadata !388, i32 74, i64 32, i64 32, i64 1728, i32 0, metadata !62} ; [ DW_TAG_member ] [min_uses] [line 74, size 32, align 32, offset 1728] [from ngx_uint_t]
!418 = metadata !{i32 786445, metadata !387, metadata !"error", metadata !388, i32 75, i64 32, i64 32, i64 1760, i32 0, metadata !62} ; [ DW_TAG_member ] [error] [line 75, size 32, align 32, offset 1760] [from ngx_uint_t]
!419 = metadata !{i32 786445, metadata !387, metadata !"valid_msec", metadata !388, i32 76, i64 32, i64 32, i64 1792, i32 0, metadata !62} ; [ DW_TAG_member ] [valid_msec] [line 76, size 32, align 32, offset 1792] [from ngx_uint_t]
!420 = metadata !{i32 786445, metadata !387, metadata !"buf", metadata !388, i32 78, i64 32, i64 32, i64 1824, i32 0, metadata !153} ; [ DW_TAG_member ] [buf] [line 78, size 32, align 32, offset 1824] [from ]
!421 = metadata !{i32 786445, metadata !387, metadata !"file_cache", metadata !388, i32 80, i64 32, i64 32, i64 1856, i32 0, metadata !422} ; [ DW_TAG_member ] [file_cache] [line 80, size 32, align 32, offset 1856] [from ]
!422 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !423} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_t]
!423 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_t", metadata !388, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !424} ; [ DW_TAG_typedef ] [ngx_http_file_cache_t] [line 19, size 0, align 0, offset 0] [from ngx_http_file_cache_s]
!424 = metadata !{i32 786451, null, metadata !"ngx_http_file_cache_s", metadata !388, i32 119, i64 416, i64 32, i32 0, i32 0, null, metadata !425, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_file_cache_s] [line 119, size 416, align 32, offset 0] [from ]
!425 = metadata !{metadata !426, metadata !449, metadata !496, metadata !517, metadata !518, metadata !519, metadata !520, metadata !521, metadata !522, metadata !523, metadata !524, metadata !525}
!426 = metadata !{i32 786445, metadata !424, metadata !"sh", metadata !388, i32 120, i64 32, i64 32, i64 0, i32 0, metadata !427} ; [ DW_TAG_member ] [sh] [line 120, size 32, align 32, offset 0] [from ]
!427 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !428} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_sh_t]
!428 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_sh_t", metadata !388, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !429} ; [ DW_TAG_typedef ] [ngx_http_file_cache_sh_t] [line 116, size 0, align 0, offset 0] [from ]
!429 = metadata !{i32 786451, null, metadata !"", metadata !388, i32 109, i64 448, i64 32, i32 0, i32 0, null, metadata !430, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 109, size 448, align 32, offset 0] [from ]
!430 = metadata !{metadata !431, metadata !442, metadata !443, metadata !444, metadata !447, metadata !448}
!431 = metadata !{i32 786445, metadata !429, metadata !"rbtree", metadata !388, i32 110, i64 96, i64 32, i64 0, i32 0, metadata !432} ; [ DW_TAG_member ] [rbtree] [line 110, size 96, align 32, offset 0] [from ngx_rbtree_t]
!432 = metadata !{i32 786454, null, metadata !"ngx_rbtree_t", metadata !388, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !433} ; [ DW_TAG_typedef ] [ngx_rbtree_t] [line 32, size 0, align 0, offset 0] [from ngx_rbtree_s]
!433 = metadata !{i32 786451, null, metadata !"ngx_rbtree_s", metadata !111, i32 37, i64 96, i64 32, i32 0, i32 0, null, metadata !434, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_s] [line 37, size 96, align 32, offset 0] [from ]
!434 = metadata !{metadata !435, metadata !436, metadata !437}
!435 = metadata !{i32 786445, metadata !433, metadata !"root", metadata !111, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !116} ; [ DW_TAG_member ] [root] [line 38, size 32, align 32, offset 0] [from ]
!436 = metadata !{i32 786445, metadata !433, metadata !"sentinel", metadata !111, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !116} ; [ DW_TAG_member ] [sentinel] [line 39, size 32, align 32, offset 32] [from ]
!437 = metadata !{i32 786445, metadata !433, metadata !"insert", metadata !111, i32 40, i64 32, i64 32, i64 64, i32 0, metadata !438} ; [ DW_TAG_member ] [insert] [line 40, size 32, align 32, offset 64] [from ngx_rbtree_insert_pt]
!438 = metadata !{i32 786454, null, metadata !"ngx_rbtree_insert_pt", metadata !111, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !439} ; [ DW_TAG_typedef ] [ngx_rbtree_insert_pt] [line 34, size 0, align 0, offset 0] [from ]
!439 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !440} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!440 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !441, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!441 = metadata !{null, metadata !116, metadata !116, metadata !116}
!442 = metadata !{i32 786445, metadata !429, metadata !"sentinel", metadata !388, i32 111, i64 160, i64 32, i64 96, i32 0, metadata !109} ; [ DW_TAG_member ] [sentinel] [line 111, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!443 = metadata !{i32 786445, metadata !429, metadata !"queue", metadata !388, i32 112, i64 64, i64 32, i64 256, i32 0, metadata !347} ; [ DW_TAG_member ] [queue] [line 112, size 64, align 32, offset 256] [from ngx_queue_t]
!444 = metadata !{i32 786445, metadata !429, metadata !"cold", metadata !388, i32 113, i64 32, i64 32, i64 320, i32 0, metadata !445} ; [ DW_TAG_member ] [cold] [line 113, size 32, align 32, offset 320] [from ngx_atomic_t]
!445 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !388, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !446} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!446 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!447 = metadata !{i32 786445, metadata !429, metadata !"loading", metadata !388, i32 114, i64 32, i64 32, i64 352, i32 0, metadata !445} ; [ DW_TAG_member ] [loading] [line 114, size 32, align 32, offset 352] [from ngx_atomic_t]
!448 = metadata !{i32 786445, metadata !429, metadata !"size", metadata !388, i32 115, i64 64, i64 32, i64 384, i32 0, metadata !160} ; [ DW_TAG_member ] [size] [line 115, size 64, align 32, offset 384] [from off_t]
!449 = metadata !{i32 786445, metadata !424, metadata !"shpool", metadata !388, i32 121, i64 32, i64 32, i64 32, i32 0, metadata !450} ; [ DW_TAG_member ] [shpool] [line 121, size 32, align 32, offset 32] [from ]
!450 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !451} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_pool_t]
!451 = metadata !{i32 786454, null, metadata !"ngx_slab_pool_t", metadata !388, i32 44, i64 0, i64 0, i64 0, i32 0, metadata !452} ; [ DW_TAG_typedef ] [ngx_slab_pool_t] [line 44, size 0, align 0, offset 0] [from ]
!452 = metadata !{i32 786451, null, metadata !"", metadata !453, i32 25, i64 704, i64 32, i32 0, i32 0, null, metadata !454, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 704, align 32, offset 0] [from ]
!453 = metadata !{i32 786473, metadata !"src/core/ngx_slab.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!454 = metadata !{metadata !455, metadata !462, metadata !463, metadata !464, metadata !472, metadata !473, metadata !474, metadata !475, metadata !492, metadata !493, metadata !494, metadata !495}
!455 = metadata !{i32 786445, metadata !452, metadata !"lock", metadata !453, i32 26, i64 64, i64 32, i64 0, i32 0, metadata !456} ; [ DW_TAG_member ] [lock] [line 26, size 64, align 32, offset 0] [from ngx_shmtx_sh_t]
!456 = metadata !{i32 786454, null, metadata !"ngx_shmtx_sh_t", metadata !453, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !457} ; [ DW_TAG_typedef ] [ngx_shmtx_sh_t] [line 21, size 0, align 0, offset 0] [from ]
!457 = metadata !{i32 786451, null, metadata !"", metadata !458, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !459, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!458 = metadata !{i32 786473, metadata !"src/core/ngx_shmtx.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!459 = metadata !{metadata !460, metadata !461}
!460 = metadata !{i32 786445, metadata !457, metadata !"lock", metadata !458, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !445} ; [ DW_TAG_member ] [lock] [line 17, size 32, align 32, offset 0] [from ngx_atomic_t]
!461 = metadata !{i32 786445, metadata !457, metadata !"wait", metadata !458, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !445} ; [ DW_TAG_member ] [wait] [line 19, size 32, align 32, offset 32] [from ngx_atomic_t]
!462 = metadata !{i32 786445, metadata !452, metadata !"min_size", metadata !453, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [min_size] [line 28, size 32, align 32, offset 64] [from size_t]
!463 = metadata !{i32 786445, metadata !452, metadata !"min_shift", metadata !453, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !85} ; [ DW_TAG_member ] [min_shift] [line 29, size 32, align 32, offset 96] [from size_t]
!464 = metadata !{i32 786445, metadata !452, metadata !"pages", metadata !453, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !465} ; [ DW_TAG_member ] [pages] [line 31, size 32, align 32, offset 128] [from ]
!465 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !466} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_page_t]
!466 = metadata !{i32 786454, null, metadata !"ngx_slab_page_t", metadata !453, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !467} ; [ DW_TAG_typedef ] [ngx_slab_page_t] [line 16, size 0, align 0, offset 0] [from ngx_slab_page_s]
!467 = metadata !{i32 786451, null, metadata !"ngx_slab_page_s", metadata !453, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !468, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_slab_page_s] [line 18, size 96, align 32, offset 0] [from ]
!468 = metadata !{metadata !469, metadata !470, metadata !471}
!469 = metadata !{i32 786445, metadata !467, metadata !"slab", metadata !453, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !63} ; [ DW_TAG_member ] [slab] [line 19, size 32, align 32, offset 0] [from uintptr_t]
!470 = metadata !{i32 786445, metadata !467, metadata !"next", metadata !453, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !465} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!471 = metadata !{i32 786445, metadata !467, metadata !"prev", metadata !453, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !63} ; [ DW_TAG_member ] [prev] [line 21, size 32, align 32, offset 64] [from uintptr_t]
!472 = metadata !{i32 786445, metadata !452, metadata !"free", metadata !453, i32 32, i64 96, i64 32, i64 160, i32 0, metadata !466} ; [ DW_TAG_member ] [free] [line 32, size 96, align 32, offset 160] [from ngx_slab_page_t]
!473 = metadata !{i32 786445, metadata !452, metadata !"start", metadata !453, i32 34, i64 32, i64 32, i64 256, i32 0, metadata !87} ; [ DW_TAG_member ] [start] [line 34, size 32, align 32, offset 256] [from ]
!474 = metadata !{i32 786445, metadata !452, metadata !"end", metadata !453, i32 35, i64 32, i64 32, i64 288, i32 0, metadata !87} ; [ DW_TAG_member ] [end] [line 35, size 32, align 32, offset 288] [from ]
!475 = metadata !{i32 786445, metadata !452, metadata !"mutex", metadata !453, i32 37, i64 256, i64 32, i64 320, i32 0, metadata !476} ; [ DW_TAG_member ] [mutex] [line 37, size 256, align 32, offset 320] [from ngx_shmtx_t]
!476 = metadata !{i32 786454, null, metadata !"ngx_shmtx_t", metadata !453, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !477} ; [ DW_TAG_typedef ] [ngx_shmtx_t] [line 37, size 0, align 0, offset 0] [from ]
!477 = metadata !{i32 786451, null, metadata !"", metadata !458, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !478, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!478 = metadata !{metadata !479, metadata !481, metadata !482, metadata !483, metadata !491}
!479 = metadata !{i32 786445, metadata !477, metadata !"lock", metadata !458, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !480} ; [ DW_TAG_member ] [lock] [line 26, size 32, align 32, offset 0] [from ]
!480 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !445} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_atomic_t]
!481 = metadata !{i32 786445, metadata !477, metadata !"wait", metadata !458, i32 28, i64 32, i64 32, i64 32, i32 0, metadata !480} ; [ DW_TAG_member ] [wait] [line 28, size 32, align 32, offset 32] [from ]
!482 = metadata !{i32 786445, metadata !477, metadata !"semaphore", metadata !458, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [semaphore] [line 29, size 32, align 32, offset 64] [from ngx_uint_t]
!483 = metadata !{i32 786445, metadata !477, metadata !"sem", metadata !458, i32 30, i64 128, i64 32, i64 96, i32 0, metadata !484} ; [ DW_TAG_member ] [sem] [line 30, size 128, align 32, offset 96] [from sem_t]
!484 = metadata !{i32 786454, null, metadata !"sem_t", metadata !458, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !485} ; [ DW_TAG_typedef ] [sem_t] [line 41, size 0, align 0, offset 0] [from ]
!485 = metadata !{i32 786455, null, metadata !"", metadata !486, i32 37, i64 128, i64 32, i64 0, i32 0, null, metadata !487, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 37, size 128, align 32, offset 0] [from ]
!486 = metadata !{i32 786473, metadata !"/usr/include/bits/semaphore.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!487 = metadata !{metadata !488, metadata !490}
!488 = metadata !{i32 786445, metadata !485, metadata !"__size", metadata !486, i32 39, i64 128, i64 8, i64 0, i32 0, metadata !489} ; [ DW_TAG_member ] [__size] [line 39, size 128, align 8, offset 0] [from ]
!489 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !107, metadata !404, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!490 = metadata !{i32 786445, metadata !485, metadata !"__align", metadata !486, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !203} ; [ DW_TAG_member ] [__align] [line 40, size 32, align 32, offset 0] [from long int]
!491 = metadata !{i32 786445, metadata !477, metadata !"spin", metadata !458, i32 36, i64 32, i64 32, i64 224, i32 0, metadata !62} ; [ DW_TAG_member ] [spin] [line 36, size 32, align 32, offset 224] [from ngx_uint_t]
!492 = metadata !{i32 786445, metadata !452, metadata !"log_ctx", metadata !453, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !87} ; [ DW_TAG_member ] [log_ctx] [line 39, size 32, align 32, offset 576] [from ]
!493 = metadata !{i32 786445, metadata !452, metadata !"zero", metadata !453, i32 40, i64 8, i64 8, i64 608, i32 0, metadata !88} ; [ DW_TAG_member ] [zero] [line 40, size 8, align 8, offset 608] [from u_char]
!494 = metadata !{i32 786445, metadata !452, metadata !"data", metadata !453, i32 42, i64 32, i64 32, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 42, size 32, align 32, offset 640] [from ]
!495 = metadata !{i32 786445, metadata !452, metadata !"addr", metadata !453, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !27} ; [ DW_TAG_member ] [addr] [line 43, size 32, align 32, offset 672] [from ]
!496 = metadata !{i32 786445, metadata !424, metadata !"path", metadata !388, i32 123, i64 32, i64 32, i64 64, i32 0, metadata !497} ; [ DW_TAG_member ] [path] [line 123, size 32, align 32, offset 64] [from ]
!497 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !498} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_path_t]
!498 = metadata !{i32 786454, null, metadata !"ngx_path_t", metadata !388, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !499} ; [ DW_TAG_typedef ] [ngx_path_t] [line 53, size 0, align 0, offset 0] [from ]
!499 = metadata !{i32 786451, null, metadata !"", metadata !173, i32 42, i64 352, i64 32, i32 0, i32 0, null, metadata !500, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 42, size 352, align 32, offset 0] [from ]
!500 = metadata !{metadata !501, metadata !502, metadata !503, metadata !507, metadata !512, metadata !514, metadata !515, metadata !516}
!501 = metadata !{i32 786445, metadata !499, metadata !"name", metadata !173, i32 43, i64 64, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [name] [line 43, size 64, align 32, offset 0] [from ngx_str_t]
!502 = metadata !{i32 786445, metadata !499, metadata !"len", metadata !173, i32 44, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [len] [line 44, size 32, align 32, offset 64] [from size_t]
!503 = metadata !{i32 786445, metadata !499, metadata !"level", metadata !173, i32 45, i64 96, i64 32, i64 96, i32 0, metadata !504} ; [ DW_TAG_member ] [level] [line 45, size 96, align 32, offset 96] [from ]
!504 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !85, metadata !505, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from size_t]
!505 = metadata !{metadata !506}
!506 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!507 = metadata !{i32 786445, metadata !499, metadata !"manager", metadata !173, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !508} ; [ DW_TAG_member ] [manager] [line 47, size 32, align 32, offset 192] [from ngx_path_manager_pt]
!508 = metadata !{i32 786454, null, metadata !"ngx_path_manager_pt", metadata !173, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !509} ; [ DW_TAG_typedef ] [ngx_path_manager_pt] [line 38, size 0, align 0, offset 0] [from ]
!509 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !510} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!510 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !511, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!511 = metadata !{metadata !410, metadata !27}
!512 = metadata !{i32 786445, metadata !499, metadata !"loader", metadata !173, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !513} ; [ DW_TAG_member ] [loader] [line 48, size 32, align 32, offset 224] [from ngx_path_loader_pt]
!513 = metadata !{i32 786454, null, metadata !"ngx_path_loader_pt", metadata !173, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !335} ; [ DW_TAG_typedef ] [ngx_path_loader_pt] [line 39, size 0, align 0, offset 0] [from ]
!514 = metadata !{i32 786445, metadata !499, metadata !"data", metadata !173, i32 49, i64 32, i64 32, i64 256, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 49, size 32, align 32, offset 256] [from ]
!515 = metadata !{i32 786445, metadata !499, metadata !"conf_file", metadata !173, i32 51, i64 32, i64 32, i64 288, i32 0, metadata !87} ; [ DW_TAG_member ] [conf_file] [line 51, size 32, align 32, offset 288] [from ]
!516 = metadata !{i32 786445, metadata !499, metadata !"line", metadata !173, i32 52, i64 32, i64 32, i64 320, i32 0, metadata !62} ; [ DW_TAG_member ] [line] [line 52, size 32, align 32, offset 320] [from ngx_uint_t]
!517 = metadata !{i32 786445, metadata !424, metadata !"max_size", metadata !388, i32 125, i64 64, i64 32, i64 96, i32 0, metadata !160} ; [ DW_TAG_member ] [max_size] [line 125, size 64, align 32, offset 96] [from off_t]
!518 = metadata !{i32 786445, metadata !424, metadata !"bsize", metadata !388, i32 126, i64 32, i64 32, i64 160, i32 0, metadata !85} ; [ DW_TAG_member ] [bsize] [line 126, size 32, align 32, offset 160] [from size_t]
!519 = metadata !{i32 786445, metadata !424, metadata !"inactive", metadata !388, i32 128, i64 32, i64 32, i64 192, i32 0, metadata !410} ; [ DW_TAG_member ] [inactive] [line 128, size 32, align 32, offset 192] [from time_t]
!520 = metadata !{i32 786445, metadata !424, metadata !"files", metadata !388, i32 130, i64 32, i64 32, i64 224, i32 0, metadata !62} ; [ DW_TAG_member ] [files] [line 130, size 32, align 32, offset 224] [from ngx_uint_t]
!521 = metadata !{i32 786445, metadata !424, metadata !"loader_files", metadata !388, i32 131, i64 32, i64 32, i64 256, i32 0, metadata !62} ; [ DW_TAG_member ] [loader_files] [line 131, size 32, align 32, offset 256] [from ngx_uint_t]
!522 = metadata !{i32 786445, metadata !424, metadata !"last", metadata !388, i32 132, i64 32, i64 32, i64 288, i32 0, metadata !283} ; [ DW_TAG_member ] [last] [line 132, size 32, align 32, offset 288] [from ngx_msec_t]
!523 = metadata !{i32 786445, metadata !424, metadata !"loader_sleep", metadata !388, i32 133, i64 32, i64 32, i64 320, i32 0, metadata !283} ; [ DW_TAG_member ] [loader_sleep] [line 133, size 32, align 32, offset 320] [from ngx_msec_t]
!524 = metadata !{i32 786445, metadata !424, metadata !"loader_threshold", metadata !388, i32 134, i64 32, i64 32, i64 352, i32 0, metadata !283} ; [ DW_TAG_member ] [loader_threshold] [line 134, size 32, align 32, offset 352] [from ngx_msec_t]
!525 = metadata !{i32 786445, metadata !424, metadata !"shm_zone", metadata !388, i32 136, i64 32, i64 32, i64 384, i32 0, metadata !526} ; [ DW_TAG_member ] [shm_zone] [line 136, size 32, align 32, offset 384] [from ]
!526 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !527} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!527 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !388, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !528} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!528 = metadata !{i32 786451, null, metadata !"ngx_shm_zone_s", metadata !529, i32 29, i64 288, i64 32, i32 0, i32 0, null, metadata !530, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_shm_zone_s] [line 29, size 288, align 32, offset 0] [from ]
!529 = metadata !{i32 786473, metadata !"src/core/ngx_cycle.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!530 = metadata !{metadata !531, metadata !532, metadata !542, metadata !549}
!531 = metadata !{i32 786445, metadata !528, metadata !"data", metadata !529, i32 30, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 30, size 32, align 32, offset 0] [from ]
!532 = metadata !{i32 786445, metadata !528, metadata !"shm", metadata !529, i32 31, i64 192, i64 32, i64 32, i32 0, metadata !533} ; [ DW_TAG_member ] [shm] [line 31, size 192, align 32, offset 32] [from ngx_shm_t]
!533 = metadata !{i32 786454, null, metadata !"ngx_shm_t", metadata !529, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !534} ; [ DW_TAG_typedef ] [ngx_shm_t] [line 22, size 0, align 0, offset 0] [from ]
!534 = metadata !{i32 786451, null, metadata !"", metadata !535, i32 16, i64 192, i64 32, i32 0, i32 0, null, metadata !536, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 192, align 32, offset 0] [from ]
!535 = metadata !{i32 786473, metadata !"src/os/unix/ngx_shmem.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!536 = metadata !{metadata !537, metadata !538, metadata !539, metadata !540, metadata !541}
!537 = metadata !{i32 786445, metadata !534, metadata !"addr", metadata !535, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !87} ; [ DW_TAG_member ] [addr] [line 17, size 32, align 32, offset 0] [from ]
!538 = metadata !{i32 786445, metadata !534, metadata !"size", metadata !535, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [size] [line 18, size 32, align 32, offset 32] [from size_t]
!539 = metadata !{i32 786445, metadata !534, metadata !"name", metadata !535, i32 19, i64 64, i64 32, i64 64, i32 0, metadata !80} ; [ DW_TAG_member ] [name] [line 19, size 64, align 32, offset 64] [from ngx_str_t]
!540 = metadata !{i32 786445, metadata !534, metadata !"log", metadata !535, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !65} ; [ DW_TAG_member ] [log] [line 20, size 32, align 32, offset 128] [from ]
!541 = metadata !{i32 786445, metadata !534, metadata !"exists", metadata !535, i32 21, i64 32, i64 32, i64 160, i32 0, metadata !62} ; [ DW_TAG_member ] [exists] [line 21, size 32, align 32, offset 160] [from ngx_uint_t]
!542 = metadata !{i32 786445, metadata !528, metadata !"init", metadata !529, i32 32, i64 32, i64 32, i64 224, i32 0, metadata !543} ; [ DW_TAG_member ] [init] [line 32, size 32, align 32, offset 224] [from ngx_shm_zone_init_pt]
!543 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_init_pt", metadata !529, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !544} ; [ DW_TAG_typedef ] [ngx_shm_zone_init_pt] [line 27, size 0, align 0, offset 0] [from ]
!544 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !545} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!545 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !546, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!546 = metadata !{metadata !8, metadata !547, metadata !27}
!547 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !548} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!548 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !529, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !528} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!549 = metadata !{i32 786445, metadata !528, metadata !"tag", metadata !529, i32 33, i64 32, i64 32, i64 256, i32 0, metadata !27} ; [ DW_TAG_member ] [tag] [line 33, size 32, align 32, offset 256] [from ]
!550 = metadata !{i32 786445, metadata !387, metadata !"node", metadata !388, i32 81, i64 32, i64 32, i64 1888, i32 0, metadata !551} ; [ DW_TAG_member ] [node] [line 81, size 32, align 32, offset 1888] [from ]
!551 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !552} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_node_t]
!552 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_node_t", metadata !388, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !553} ; [ DW_TAG_typedef ] [ngx_http_file_cache_node_t] [line 55, size 0, align 0, offset 0] [from ]
!553 = metadata !{i32 786451, null, metadata !"", metadata !388, i32 34, i64 608, i64 32, i32 0, i32 0, null, metadata !554, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 34, size 608, align 32, offset 0] [from ]
!554 = metadata !{metadata !555, metadata !556, metadata !557, metadata !561, metadata !562, metadata !563, metadata !564, metadata !565, metadata !566, metadata !567, metadata !568, metadata !569, metadata !570, metadata !571, metadata !572}
!555 = metadata !{i32 786445, metadata !553, metadata !"node", metadata !388, i32 35, i64 160, i64 32, i64 0, i32 0, metadata !109} ; [ DW_TAG_member ] [node] [line 35, size 160, align 32, offset 0] [from ngx_rbtree_node_t]
!556 = metadata !{i32 786445, metadata !553, metadata !"queue", metadata !388, i32 36, i64 64, i64 32, i64 160, i32 0, metadata !347} ; [ DW_TAG_member ] [queue] [line 36, size 64, align 32, offset 160] [from ngx_queue_t]
!557 = metadata !{i32 786445, metadata !553, metadata !"key", metadata !388, i32 38, i64 96, i64 8, i64 224, i32 0, metadata !558} ; [ DW_TAG_member ] [key] [line 38, size 96, align 8, offset 224] [from ]
!558 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 8, i32 0, i32 0, metadata !88, metadata !559, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from u_char]
!559 = metadata !{metadata !560}
!560 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 11]
!561 = metadata !{i32 786445, metadata !553, metadata !"count", metadata !388, i32 41, i64 20, i64 32, i64 320, i32 0, metadata !19} ; [ DW_TAG_member ] [count] [line 41, size 20, align 32, offset 320] [from unsigned int]
!562 = metadata !{i32 786445, metadata !553, metadata !"uses", metadata !388, i32 42, i64 10, i64 32, i64 340, i32 0, metadata !19} ; [ DW_TAG_member ] [uses] [line 42, size 10, align 32, offset 340] [from unsigned int]
!563 = metadata !{i32 786445, metadata !553, metadata !"valid_msec", metadata !388, i32 43, i64 10, i64 32, i64 352, i32 0, metadata !19} ; [ DW_TAG_member ] [valid_msec] [line 43, size 10, align 32, offset 352] [from unsigned int]
!564 = metadata !{i32 786445, metadata !553, metadata !"error", metadata !388, i32 44, i64 10, i64 32, i64 362, i32 0, metadata !19} ; [ DW_TAG_member ] [error] [line 44, size 10, align 32, offset 362] [from unsigned int]
!565 = metadata !{i32 786445, metadata !553, metadata !"exists", metadata !388, i32 45, i64 1, i64 32, i64 372, i32 0, metadata !19} ; [ DW_TAG_member ] [exists] [line 45, size 1, align 32, offset 372] [from unsigned int]
!566 = metadata !{i32 786445, metadata !553, metadata !"updating", metadata !388, i32 46, i64 1, i64 32, i64 373, i32 0, metadata !19} ; [ DW_TAG_member ] [updating] [line 46, size 1, align 32, offset 373] [from unsigned int]
!567 = metadata !{i32 786445, metadata !553, metadata !"deleting", metadata !388, i32 47, i64 1, i64 32, i64 374, i32 0, metadata !19} ; [ DW_TAG_member ] [deleting] [line 47, size 1, align 32, offset 374] [from unsigned int]
!568 = metadata !{i32 786445, metadata !553, metadata !"uniq", metadata !388, i32 50, i64 64, i64 32, i64 384, i32 0, metadata !407} ; [ DW_TAG_member ] [uniq] [line 50, size 64, align 32, offset 384] [from ngx_file_uniq_t]
!569 = metadata !{i32 786445, metadata !553, metadata !"expire", metadata !388, i32 51, i64 32, i64 32, i64 448, i32 0, metadata !410} ; [ DW_TAG_member ] [expire] [line 51, size 32, align 32, offset 448] [from time_t]
!570 = metadata !{i32 786445, metadata !553, metadata !"valid_sec", metadata !388, i32 52, i64 32, i64 32, i64 480, i32 0, metadata !410} ; [ DW_TAG_member ] [valid_sec] [line 52, size 32, align 32, offset 480] [from time_t]
!571 = metadata !{i32 786445, metadata !553, metadata !"body_start", metadata !388, i32 53, i64 32, i64 32, i64 512, i32 0, metadata !85} ; [ DW_TAG_member ] [body_start] [line 53, size 32, align 32, offset 512] [from size_t]
!572 = metadata !{i32 786445, metadata !553, metadata !"fs_size", metadata !388, i32 54, i64 64, i64 32, i64 544, i32 0, metadata !160} ; [ DW_TAG_member ] [fs_size] [line 54, size 64, align 32, offset 544] [from off_t]
!573 = metadata !{i32 786445, metadata !387, metadata !"lock_timeout", metadata !388, i32 83, i64 32, i64 32, i64 1920, i32 0, metadata !283} ; [ DW_TAG_member ] [lock_timeout] [line 83, size 32, align 32, offset 1920] [from ngx_msec_t]
!574 = metadata !{i32 786445, metadata !387, metadata !"wait_time", metadata !388, i32 84, i64 32, i64 32, i64 1952, i32 0, metadata !283} ; [ DW_TAG_member ] [wait_time] [line 84, size 32, align 32, offset 1952] [from ngx_msec_t]
!575 = metadata !{i32 786445, metadata !387, metadata !"wait_event", metadata !388, i32 86, i64 416, i64 32, i64 1984, i32 0, metadata !30} ; [ DW_TAG_member ] [wait_event] [line 86, size 416, align 32, offset 1984] [from ngx_event_t]
!576 = metadata !{i32 786445, metadata !387, metadata !"lock", metadata !388, i32 88, i64 1, i64 32, i64 2400, i32 0, metadata !19} ; [ DW_TAG_member ] [lock] [line 88, size 1, align 32, offset 2400] [from unsigned int]
!577 = metadata !{i32 786445, metadata !387, metadata !"waiting", metadata !388, i32 89, i64 1, i64 32, i64 2401, i32 0, metadata !19} ; [ DW_TAG_member ] [waiting] [line 89, size 1, align 32, offset 2401] [from unsigned int]
!578 = metadata !{i32 786445, metadata !387, metadata !"updated", metadata !388, i32 91, i64 1, i64 32, i64 2402, i32 0, metadata !19} ; [ DW_TAG_member ] [updated] [line 91, size 1, align 32, offset 2402] [from unsigned int]
!579 = metadata !{i32 786445, metadata !387, metadata !"updating", metadata !388, i32 92, i64 1, i64 32, i64 2403, i32 0, metadata !19} ; [ DW_TAG_member ] [updating] [line 92, size 1, align 32, offset 2403] [from unsigned int]
!580 = metadata !{i32 786445, metadata !387, metadata !"exists", metadata !388, i32 93, i64 1, i64 32, i64 2404, i32 0, metadata !19} ; [ DW_TAG_member ] [exists] [line 93, size 1, align 32, offset 2404] [from unsigned int]
!581 = metadata !{i32 786445, metadata !387, metadata !"temp_file", metadata !388, i32 94, i64 1, i64 32, i64 2405, i32 0, metadata !19} ; [ DW_TAG_member ] [temp_file] [line 94, size 1, align 32, offset 2405] [from unsigned int]
!582 = metadata !{i32 786445, metadata !14, metadata !"upstream", metadata !15, i32 371, i64 32, i64 32, i64 288, i32 0, metadata !583} ; [ DW_TAG_member ] [upstream] [line 371, size 32, align 32, offset 288] [from ]
!583 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !584} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!584 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !15, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !585} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!585 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_s", metadata !586, i32 261, i64 3584, i64 32, i32 0, i32 0, null, metadata !587, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_s] [line 261, size 3584, align 32, offset 0] [from ]
!586 = metadata !{i32 786473, metadata !"src/http/ngx_http_upstream.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!587 = metadata !{metadata !588, metadata !595, metadata !596, metadata !633, metadata !709, metadata !710, metadata !731, metadata !740, metadata !926, metadata !962, metadata !1035, metadata !1036, metadata !1037, metadata !1038, metadata !1039, metadata !1040, metadata !1044, metadata !1048, metadata !1049, metadata !1053, metadata !1054, metadata !1055, metadata !1056, metadata !1057, metadata !1061, metadata !1065, metadata !1069, metadata !1070, metadata !1082, metadata !1083, metadata !1084, metadata !1085, metadata !1088, metadata !1089, metadata !1090, metadata !1091, metadata !1092, metadata !1093, metadata !1094, metadata !1095, metadata !1096}
!588 = metadata !{i32 786445, metadata !585, metadata !"read_event_handler", metadata !586, i32 262, i64 32, i64 32, i64 0, i32 0, metadata !589} ; [ DW_TAG_member ] [read_event_handler] [line 262, size 32, align 32, offset 0] [from ngx_http_upstream_handler_pt]
!589 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_handler_pt", metadata !586, i32 257, i64 0, i64 0, i64 0, i32 0, metadata !590} ; [ DW_TAG_typedef ] [ngx_http_upstream_handler_pt] [line 257, size 0, align 0, offset 0] [from ]
!590 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !591} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!591 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !592, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!592 = metadata !{null, metadata !381, metadata !593}
!593 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !594} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!594 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !586, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !585} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!595 = metadata !{i32 786445, metadata !585, metadata !"write_event_handler", metadata !586, i32 263, i64 32, i64 32, i64 32, i32 0, metadata !589} ; [ DW_TAG_member ] [write_event_handler] [line 263, size 32, align 32, offset 32] [from ngx_http_upstream_handler_pt]
!596 = metadata !{i32 786445, metadata !585, metadata !"peer", metadata !586, i32 265, i64 384, i64 32, i64 64, i32 0, metadata !597} ; [ DW_TAG_member ] [peer] [line 265, size 384, align 32, offset 64] [from ngx_peer_connection_t]
!597 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !586, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !598} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!598 = metadata !{i32 786451, null, metadata !"ngx_peer_connection_s", metadata !599, i32 37, i64 384, i64 32, i32 0, i32 0, null, metadata !600, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_peer_connection_s] [line 37, size 384, align 32, offset 0] [from ]
!599 = metadata !{i32 786473, metadata !"src/event/ngx_event_connect.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!600 = metadata !{metadata !601, metadata !602, metadata !603, metadata !604, metadata !606, metadata !607, metadata !614, metadata !619, metadata !620, metadata !629, metadata !630, metadata !631, metadata !632}
!601 = metadata !{i32 786445, metadata !598, metadata !"connection", metadata !599, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [connection] [line 38, size 32, align 32, offset 0] [from ]
!602 = metadata !{i32 786445, metadata !598, metadata !"sockaddr", metadata !599, i32 40, i64 32, i64 32, i64 32, i32 0, metadata !250} ; [ DW_TAG_member ] [sockaddr] [line 40, size 32, align 32, offset 32] [from ]
!603 = metadata !{i32 786445, metadata !598, metadata !"socklen", metadata !599, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !261} ; [ DW_TAG_member ] [socklen] [line 41, size 32, align 32, offset 64] [from socklen_t]
!604 = metadata !{i32 786445, metadata !598, metadata !"name", metadata !599, i32 42, i64 32, i64 32, i64 96, i32 0, metadata !605} ; [ DW_TAG_member ] [name] [line 42, size 32, align 32, offset 96] [from ]
!605 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!606 = metadata !{i32 786445, metadata !598, metadata !"tries", metadata !599, i32 44, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [tries] [line 44, size 32, align 32, offset 128] [from ngx_uint_t]
!607 = metadata !{i32 786445, metadata !598, metadata !"get", metadata !599, i32 46, i64 32, i64 32, i64 160, i32 0, metadata !608} ; [ DW_TAG_member ] [get] [line 46, size 32, align 32, offset 160] [from ngx_event_get_peer_pt]
!608 = metadata !{i32 786454, null, metadata !"ngx_event_get_peer_pt", metadata !599, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !609} ; [ DW_TAG_typedef ] [ngx_event_get_peer_pt] [line 24, size 0, align 0, offset 0] [from ]
!609 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !610} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!610 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !611, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!611 = metadata !{metadata !8, metadata !612, metadata !27}
!612 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !613} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_peer_connection_t]
!613 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !599, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !598} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!614 = metadata !{i32 786445, metadata !598, metadata !"free", metadata !599, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !615} ; [ DW_TAG_member ] [free] [line 47, size 32, align 32, offset 192] [from ngx_event_free_peer_pt]
!615 = metadata !{i32 786454, null, metadata !"ngx_event_free_peer_pt", metadata !599, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !616} ; [ DW_TAG_typedef ] [ngx_event_free_peer_pt] [line 26, size 0, align 0, offset 0] [from ]
!616 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !617} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!617 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !618, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!618 = metadata !{null, metadata !612, metadata !27, metadata !62}
!619 = metadata !{i32 786445, metadata !598, metadata !"data", metadata !599, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 48, size 32, align 32, offset 224] [from ]
!620 = metadata !{i32 786445, metadata !598, metadata !"local", metadata !599, i32 59, i64 32, i64 32, i64 256, i32 0, metadata !621} ; [ DW_TAG_member ] [local] [line 59, size 32, align 32, offset 256] [from ]
!621 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !622} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_addr_t]
!622 = metadata !{i32 786454, null, metadata !"ngx_addr_t", metadata !599, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !623} ; [ DW_TAG_typedef ] [ngx_addr_t] [line 74, size 0, align 0, offset 0] [from ]
!623 = metadata !{i32 786451, null, metadata !"", metadata !624, i32 70, i64 128, i64 32, i32 0, i32 0, null, metadata !625, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 70, size 128, align 32, offset 0] [from ]
!624 = metadata !{i32 786473, metadata !"src/core/ngx_inet.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!625 = metadata !{metadata !626, metadata !627, metadata !628}
!626 = metadata !{i32 786445, metadata !623, metadata !"sockaddr", metadata !624, i32 71, i64 32, i64 32, i64 0, i32 0, metadata !250} ; [ DW_TAG_member ] [sockaddr] [line 71, size 32, align 32, offset 0] [from ]
!627 = metadata !{i32 786445, metadata !623, metadata !"socklen", metadata !624, i32 72, i64 32, i64 32, i64 32, i32 0, metadata !261} ; [ DW_TAG_member ] [socklen] [line 72, size 32, align 32, offset 32] [from socklen_t]
!628 = metadata !{i32 786445, metadata !623, metadata !"name", metadata !624, i32 73, i64 64, i64 32, i64 64, i32 0, metadata !80} ; [ DW_TAG_member ] [name] [line 73, size 64, align 32, offset 64] [from ngx_str_t]
!629 = metadata !{i32 786445, metadata !598, metadata !"rcvbuf", metadata !599, i32 61, i64 32, i64 32, i64 288, i32 0, metadata !11} ; [ DW_TAG_member ] [rcvbuf] [line 61, size 32, align 32, offset 288] [from int]
!630 = metadata !{i32 786445, metadata !598, metadata !"log", metadata !599, i32 63, i64 32, i64 32, i64 320, i32 0, metadata !65} ; [ DW_TAG_member ] [log] [line 63, size 32, align 32, offset 320] [from ]
!631 = metadata !{i32 786445, metadata !598, metadata !"cached", metadata !599, i32 65, i64 1, i64 32, i64 352, i32 0, metadata !19} ; [ DW_TAG_member ] [cached] [line 65, size 1, align 32, offset 352] [from unsigned int]
!632 = metadata !{i32 786445, metadata !598, metadata !"log_error", metadata !599, i32 68, i64 2, i64 32, i64 353, i32 0, metadata !19} ; [ DW_TAG_member ] [log_error] [line 68, size 2, align 32, offset 353] [from unsigned int]
!633 = metadata !{i32 786445, metadata !585, metadata !"pipe", metadata !586, i32 267, i64 32, i64 32, i64 448, i32 0, metadata !634} ; [ DW_TAG_member ] [pipe] [line 267, size 32, align 32, offset 448] [from ]
!634 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !635} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!635 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !586, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !636} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!636 = metadata !{i32 786451, null, metadata !"ngx_event_pipe_s", metadata !637, i32 25, i64 1120, i64 32, i32 0, i32 0, null, metadata !638, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_pipe_s] [line 25, size 1120, align 32, offset 0] [from ]
!637 = metadata !{i32 786473, metadata !"src/event/ngx_event_pipe.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!638 = metadata !{metadata !639, metadata !640, metadata !641, metadata !642, metadata !643, metadata !645, metadata !646, metadata !647, metadata !648, metadata !655, metadata !656, metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !669, metadata !670, metadata !671, metadata !672, metadata !673, metadata !674, metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !708}
!639 = metadata !{i32 786445, metadata !636, metadata !"upstream", metadata !637, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [upstream] [line 26, size 32, align 32, offset 0] [from ]
!640 = metadata !{i32 786445, metadata !636, metadata !"downstream", metadata !637, i32 27, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [downstream] [line 27, size 32, align 32, offset 32] [from ]
!641 = metadata !{i32 786445, metadata !636, metadata !"free_raw_bufs", metadata !637, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !147} ; [ DW_TAG_member ] [free_raw_bufs] [line 29, size 32, align 32, offset 64] [from ]
!642 = metadata !{i32 786445, metadata !636, metadata !"in", metadata !637, i32 30, i64 32, i64 32, i64 96, i32 0, metadata !147} ; [ DW_TAG_member ] [in] [line 30, size 32, align 32, offset 96] [from ]
!643 = metadata !{i32 786445, metadata !636, metadata !"last_in", metadata !637, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !644} ; [ DW_TAG_member ] [last_in] [line 31, size 32, align 32, offset 128] [from ]
!644 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !147} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!645 = metadata !{i32 786445, metadata !636, metadata !"out", metadata !637, i32 33, i64 32, i64 32, i64 160, i32 0, metadata !147} ; [ DW_TAG_member ] [out] [line 33, size 32, align 32, offset 160] [from ]
!646 = metadata !{i32 786445, metadata !636, metadata !"free", metadata !637, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !147} ; [ DW_TAG_member ] [free] [line 34, size 32, align 32, offset 192] [from ]
!647 = metadata !{i32 786445, metadata !636, metadata !"busy", metadata !637, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !147} ; [ DW_TAG_member ] [busy] [line 35, size 32, align 32, offset 224] [from ]
!648 = metadata !{i32 786445, metadata !636, metadata !"input_filter", metadata !637, i32 42, i64 32, i64 32, i64 256, i32 0, metadata !649} ; [ DW_TAG_member ] [input_filter] [line 42, size 32, align 32, offset 256] [from ngx_event_pipe_input_filter_pt]
!649 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_input_filter_pt", metadata !637, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !650} ; [ DW_TAG_typedef ] [ngx_event_pipe_input_filter_pt] [line 19, size 0, align 0, offset 0] [from ]
!650 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !651} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!651 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !652, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!652 = metadata !{metadata !8, metadata !653, metadata !153}
!653 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !654} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!654 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !637, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !636} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!655 = metadata !{i32 786445, metadata !636, metadata !"input_ctx", metadata !637, i32 43, i64 32, i64 32, i64 288, i32 0, metadata !27} ; [ DW_TAG_member ] [input_ctx] [line 43, size 32, align 32, offset 288] [from ]
!656 = metadata !{i32 786445, metadata !636, metadata !"output_filter", metadata !637, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !657} ; [ DW_TAG_member ] [output_filter] [line 45, size 32, align 32, offset 320] [from ngx_event_pipe_output_filter_pt]
!657 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_output_filter_pt", metadata !637, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !658} ; [ DW_TAG_typedef ] [ngx_event_pipe_output_filter_pt] [line 21, size 0, align 0, offset 0] [from ]
!658 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !659} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!659 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !660, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!660 = metadata !{metadata !8, metadata !27, metadata !147}
!661 = metadata !{i32 786445, metadata !636, metadata !"output_ctx", metadata !637, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !27} ; [ DW_TAG_member ] [output_ctx] [line 46, size 32, align 32, offset 352] [from ]
!662 = metadata !{i32 786445, metadata !636, metadata !"read", metadata !637, i32 48, i64 1, i64 32, i64 384, i32 0, metadata !19} ; [ DW_TAG_member ] [read] [line 48, size 1, align 32, offset 384] [from unsigned int]
!663 = metadata !{i32 786445, metadata !636, metadata !"cacheable", metadata !637, i32 49, i64 1, i64 32, i64 385, i32 0, metadata !19} ; [ DW_TAG_member ] [cacheable] [line 49, size 1, align 32, offset 385] [from unsigned int]
!664 = metadata !{i32 786445, metadata !636, metadata !"single_buf", metadata !637, i32 50, i64 1, i64 32, i64 386, i32 0, metadata !19} ; [ DW_TAG_member ] [single_buf] [line 50, size 1, align 32, offset 386] [from unsigned int]
!665 = metadata !{i32 786445, metadata !636, metadata !"free_bufs", metadata !637, i32 51, i64 1, i64 32, i64 387, i32 0, metadata !19} ; [ DW_TAG_member ] [free_bufs] [line 51, size 1, align 32, offset 387] [from unsigned int]
!666 = metadata !{i32 786445, metadata !636, metadata !"upstream_done", metadata !637, i32 52, i64 1, i64 32, i64 388, i32 0, metadata !19} ; [ DW_TAG_member ] [upstream_done] [line 52, size 1, align 32, offset 388] [from unsigned int]
!667 = metadata !{i32 786445, metadata !636, metadata !"upstream_error", metadata !637, i32 53, i64 1, i64 32, i64 389, i32 0, metadata !19} ; [ DW_TAG_member ] [upstream_error] [line 53, size 1, align 32, offset 389] [from unsigned int]
!668 = metadata !{i32 786445, metadata !636, metadata !"upstream_eof", metadata !637, i32 54, i64 1, i64 32, i64 390, i32 0, metadata !19} ; [ DW_TAG_member ] [upstream_eof] [line 54, size 1, align 32, offset 390] [from unsigned int]
!669 = metadata !{i32 786445, metadata !636, metadata !"upstream_blocked", metadata !637, i32 55, i64 1, i64 32, i64 391, i32 0, metadata !19} ; [ DW_TAG_member ] [upstream_blocked] [line 55, size 1, align 32, offset 391] [from unsigned int]
!670 = metadata !{i32 786445, metadata !636, metadata !"downstream_done", metadata !637, i32 56, i64 1, i64 32, i64 392, i32 0, metadata !19} ; [ DW_TAG_member ] [downstream_done] [line 56, size 1, align 32, offset 392] [from unsigned int]
!671 = metadata !{i32 786445, metadata !636, metadata !"downstream_error", metadata !637, i32 57, i64 1, i64 32, i64 393, i32 0, metadata !19} ; [ DW_TAG_member ] [downstream_error] [line 57, size 1, align 32, offset 393] [from unsigned int]
!672 = metadata !{i32 786445, metadata !636, metadata !"cyclic_temp_file", metadata !637, i32 58, i64 1, i64 32, i64 394, i32 0, metadata !19} ; [ DW_TAG_member ] [cyclic_temp_file] [line 58, size 1, align 32, offset 394] [from unsigned int]
!673 = metadata !{i32 786445, metadata !636, metadata !"allocated", metadata !637, i32 60, i64 32, i64 32, i64 416, i32 0, metadata !8} ; [ DW_TAG_member ] [allocated] [line 60, size 32, align 32, offset 416] [from ngx_int_t]
!674 = metadata !{i32 786445, metadata !636, metadata !"bufs", metadata !637, i32 61, i64 64, i64 32, i64 448, i32 0, metadata !675} ; [ DW_TAG_member ] [bufs] [line 61, size 64, align 32, offset 448] [from ngx_bufs_t]
!675 = metadata !{i32 786454, null, metadata !"ngx_bufs_t", metadata !637, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !676} ; [ DW_TAG_typedef ] [ngx_bufs_t] [line 68, size 0, align 0, offset 0] [from ]
!676 = metadata !{i32 786451, null, metadata !"", metadata !150, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !677, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!677 = metadata !{metadata !678, metadata !679}
!678 = metadata !{i32 786445, metadata !676, metadata !"num", metadata !150, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [num] [line 66, size 32, align 32, offset 0] [from ngx_int_t]
!679 = metadata !{i32 786445, metadata !676, metadata !"size", metadata !150, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !85} ; [ DW_TAG_member ] [size] [line 67, size 32, align 32, offset 32] [from size_t]
!680 = metadata !{i32 786445, metadata !636, metadata !"tag", metadata !637, i32 62, i64 32, i64 32, i64 512, i32 0, metadata !168} ; [ DW_TAG_member ] [tag] [line 62, size 32, align 32, offset 512] [from ngx_buf_tag_t]
!681 = metadata !{i32 786445, metadata !636, metadata !"busy_size", metadata !637, i32 64, i64 32, i64 32, i64 544, i32 0, metadata !136} ; [ DW_TAG_member ] [busy_size] [line 64, size 32, align 32, offset 544] [from ssize_t]
!682 = metadata !{i32 786445, metadata !636, metadata !"read_length", metadata !637, i32 66, i64 64, i64 32, i64 576, i32 0, metadata !160} ; [ DW_TAG_member ] [read_length] [line 66, size 64, align 32, offset 576] [from off_t]
!683 = metadata !{i32 786445, metadata !636, metadata !"length", metadata !637, i32 67, i64 64, i64 32, i64 640, i32 0, metadata !160} ; [ DW_TAG_member ] [length] [line 67, size 64, align 32, offset 640] [from off_t]
!684 = metadata !{i32 786445, metadata !636, metadata !"max_temp_file_size", metadata !637, i32 69, i64 64, i64 32, i64 704, i32 0, metadata !160} ; [ DW_TAG_member ] [max_temp_file_size] [line 69, size 64, align 32, offset 704] [from off_t]
!685 = metadata !{i32 786445, metadata !636, metadata !"temp_file_write_size", metadata !637, i32 70, i64 32, i64 32, i64 768, i32 0, metadata !136} ; [ DW_TAG_member ] [temp_file_write_size] [line 70, size 32, align 32, offset 768] [from ssize_t]
!686 = metadata !{i32 786445, metadata !636, metadata !"read_timeout", metadata !637, i32 72, i64 32, i64 32, i64 800, i32 0, metadata !283} ; [ DW_TAG_member ] [read_timeout] [line 72, size 32, align 32, offset 800] [from ngx_msec_t]
!687 = metadata !{i32 786445, metadata !636, metadata !"send_timeout", metadata !637, i32 73, i64 32, i64 32, i64 832, i32 0, metadata !283} ; [ DW_TAG_member ] [send_timeout] [line 73, size 32, align 32, offset 832] [from ngx_msec_t]
!688 = metadata !{i32 786445, metadata !636, metadata !"send_lowat", metadata !637, i32 74, i64 32, i64 32, i64 864, i32 0, metadata !136} ; [ DW_TAG_member ] [send_lowat] [line 74, size 32, align 32, offset 864] [from ssize_t]
!689 = metadata !{i32 786445, metadata !636, metadata !"pool", metadata !637, i32 76, i64 32, i64 32, i64 896, i32 0, metadata !303} ; [ DW_TAG_member ] [pool] [line 76, size 32, align 32, offset 896] [from ]
!690 = metadata !{i32 786445, metadata !636, metadata !"log", metadata !637, i32 77, i64 32, i64 32, i64 928, i32 0, metadata !65} ; [ DW_TAG_member ] [log] [line 77, size 32, align 32, offset 928] [from ]
!691 = metadata !{i32 786445, metadata !636, metadata !"preread_bufs", metadata !637, i32 79, i64 32, i64 32, i64 960, i32 0, metadata !147} ; [ DW_TAG_member ] [preread_bufs] [line 79, size 32, align 32, offset 960] [from ]
!692 = metadata !{i32 786445, metadata !636, metadata !"preread_size", metadata !637, i32 80, i64 32, i64 32, i64 992, i32 0, metadata !85} ; [ DW_TAG_member ] [preread_size] [line 80, size 32, align 32, offset 992] [from size_t]
!693 = metadata !{i32 786445, metadata !636, metadata !"buf_to_file", metadata !637, i32 81, i64 32, i64 32, i64 1024, i32 0, metadata !153} ; [ DW_TAG_member ] [buf_to_file] [line 81, size 32, align 32, offset 1024] [from ]
!694 = metadata !{i32 786445, metadata !636, metadata !"temp_file", metadata !637, i32 83, i64 32, i64 32, i64 1056, i32 0, metadata !695} ; [ DW_TAG_member ] [temp_file] [line 83, size 32, align 32, offset 1056] [from ]
!695 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !696} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_temp_file_t]
!696 = metadata !{i32 786454, null, metadata !"ngx_temp_file_t", metadata !637, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !697} ; [ DW_TAG_typedef ] [ngx_temp_file_t] [line 74, size 0, align 0, offset 0] [from ]
!697 = metadata !{i32 786451, null, metadata !"", metadata !173, i32 62, i64 1280, i64 32, i32 0, i32 0, null, metadata !698, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 62, size 1280, align 32, offset 0] [from ]
!698 = metadata !{metadata !699, metadata !700, metadata !701, metadata !702, metadata !703, metadata !704, metadata !705, metadata !706, metadata !707}
!699 = metadata !{i32 786445, metadata !697, metadata !"file", metadata !173, i32 63, i64 1056, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [file] [line 63, size 1056, align 32, offset 0] [from ngx_file_t]
!700 = metadata !{i32 786445, metadata !697, metadata !"offset", metadata !173, i32 64, i64 64, i64 32, i64 1056, i32 0, metadata !160} ; [ DW_TAG_member ] [offset] [line 64, size 64, align 32, offset 1056] [from off_t]
!701 = metadata !{i32 786445, metadata !697, metadata !"path", metadata !173, i32 65, i64 32, i64 32, i64 1120, i32 0, metadata !497} ; [ DW_TAG_member ] [path] [line 65, size 32, align 32, offset 1120] [from ]
!702 = metadata !{i32 786445, metadata !697, metadata !"pool", metadata !173, i32 66, i64 32, i64 32, i64 1152, i32 0, metadata !303} ; [ DW_TAG_member ] [pool] [line 66, size 32, align 32, offset 1152] [from ]
!703 = metadata !{i32 786445, metadata !697, metadata !"warn", metadata !173, i32 67, i64 32, i64 32, i64 1184, i32 0, metadata !106} ; [ DW_TAG_member ] [warn] [line 67, size 32, align 32, offset 1184] [from ]
!704 = metadata !{i32 786445, metadata !697, metadata !"access", metadata !173, i32 69, i64 32, i64 32, i64 1216, i32 0, metadata !62} ; [ DW_TAG_member ] [access] [line 69, size 32, align 32, offset 1216] [from ngx_uint_t]
!705 = metadata !{i32 786445, metadata !697, metadata !"log_level", metadata !173, i32 71, i64 8, i64 32, i64 1248, i32 0, metadata !19} ; [ DW_TAG_member ] [log_level] [line 71, size 8, align 32, offset 1248] [from unsigned int]
!706 = metadata !{i32 786445, metadata !697, metadata !"persistent", metadata !173, i32 72, i64 1, i64 32, i64 1256, i32 0, metadata !19} ; [ DW_TAG_member ] [persistent] [line 72, size 1, align 32, offset 1256] [from unsigned int]
!707 = metadata !{i32 786445, metadata !697, metadata !"clean", metadata !173, i32 73, i64 1, i64 32, i64 1257, i32 0, metadata !19} ; [ DW_TAG_member ] [clean] [line 73, size 1, align 32, offset 1257] [from unsigned int]
!708 = metadata !{i32 786445, metadata !636, metadata !"num", metadata !637, i32 85, i64 32, i64 32, i64 1088, i32 0, metadata !11} ; [ DW_TAG_member ] [num] [line 85, size 32, align 32, offset 1088] [from int]
!709 = metadata !{i32 786445, metadata !585, metadata !"request_bufs", metadata !586, i32 269, i64 32, i64 32, i64 480, i32 0, metadata !147} ; [ DW_TAG_member ] [request_bufs] [line 269, size 32, align 32, offset 480] [from ]
!710 = metadata !{i32 786445, metadata !585, metadata !"output", metadata !586, i32 271, i64 448, i64 32, i64 512, i32 0, metadata !711} ; [ DW_TAG_member ] [output] [line 271, size 448, align 32, offset 512] [from ngx_output_chain_ctx_t]
!711 = metadata !{i32 786454, null, metadata !"ngx_output_chain_ctx_t", metadata !586, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !712} ; [ DW_TAG_typedef ] [ngx_output_chain_ctx_t] [line 71, size 0, align 0, offset 0] [from ngx_output_chain_ctx_s]
!712 = metadata !{i32 786451, null, metadata !"ngx_output_chain_ctx_s", metadata !150, i32 80, i64 448, i64 32, i32 0, i32 0, null, metadata !713, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_output_chain_ctx_s] [line 80, size 448, align 32, offset 0] [from ]
!713 = metadata !{metadata !714, metadata !715, metadata !716, metadata !717, metadata !718, metadata !719, metadata !720, metadata !721, metadata !722, metadata !723, metadata !724, metadata !725, metadata !726, metadata !727, metadata !728, metadata !730}
!714 = metadata !{i32 786445, metadata !712, metadata !"buf", metadata !150, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !153} ; [ DW_TAG_member ] [buf] [line 81, size 32, align 32, offset 0] [from ]
!715 = metadata !{i32 786445, metadata !712, metadata !"in", metadata !150, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !147} ; [ DW_TAG_member ] [in] [line 82, size 32, align 32, offset 32] [from ]
!716 = metadata !{i32 786445, metadata !712, metadata !"free", metadata !150, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !147} ; [ DW_TAG_member ] [free] [line 83, size 32, align 32, offset 64] [from ]
!717 = metadata !{i32 786445, metadata !712, metadata !"busy", metadata !150, i32 84, i64 32, i64 32, i64 96, i32 0, metadata !147} ; [ DW_TAG_member ] [busy] [line 84, size 32, align 32, offset 96] [from ]
!718 = metadata !{i32 786445, metadata !712, metadata !"sendfile", metadata !150, i32 86, i64 1, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [sendfile] [line 86, size 1, align 32, offset 128] [from unsigned int]
!719 = metadata !{i32 786445, metadata !712, metadata !"directio", metadata !150, i32 87, i64 1, i64 32, i64 129, i32 0, metadata !19} ; [ DW_TAG_member ] [directio] [line 87, size 1, align 32, offset 129] [from unsigned int]
!720 = metadata !{i32 786445, metadata !712, metadata !"unaligned", metadata !150, i32 89, i64 1, i64 32, i64 130, i32 0, metadata !19} ; [ DW_TAG_member ] [unaligned] [line 89, size 1, align 32, offset 130] [from unsigned int]
!721 = metadata !{i32 786445, metadata !712, metadata !"need_in_memory", metadata !150, i32 91, i64 1, i64 32, i64 131, i32 0, metadata !19} ; [ DW_TAG_member ] [need_in_memory] [line 91, size 1, align 32, offset 131] [from unsigned int]
!722 = metadata !{i32 786445, metadata !712, metadata !"need_in_temp", metadata !150, i32 92, i64 1, i64 32, i64 132, i32 0, metadata !19} ; [ DW_TAG_member ] [need_in_temp] [line 92, size 1, align 32, offset 132] [from unsigned int]
!723 = metadata !{i32 786445, metadata !712, metadata !"alignment", metadata !150, i32 99, i64 64, i64 32, i64 160, i32 0, metadata !160} ; [ DW_TAG_member ] [alignment] [line 99, size 64, align 32, offset 160] [from off_t]
!724 = metadata !{i32 786445, metadata !712, metadata !"pool", metadata !150, i32 101, i64 32, i64 32, i64 224, i32 0, metadata !303} ; [ DW_TAG_member ] [pool] [line 101, size 32, align 32, offset 224] [from ]
!725 = metadata !{i32 786445, metadata !712, metadata !"allocated", metadata !150, i32 102, i64 32, i64 32, i64 256, i32 0, metadata !8} ; [ DW_TAG_member ] [allocated] [line 102, size 32, align 32, offset 256] [from ngx_int_t]
!726 = metadata !{i32 786445, metadata !712, metadata !"bufs", metadata !150, i32 103, i64 64, i64 32, i64 288, i32 0, metadata !675} ; [ DW_TAG_member ] [bufs] [line 103, size 64, align 32, offset 288] [from ngx_bufs_t]
!727 = metadata !{i32 786445, metadata !712, metadata !"tag", metadata !150, i32 104, i64 32, i64 32, i64 352, i32 0, metadata !168} ; [ DW_TAG_member ] [tag] [line 104, size 32, align 32, offset 352] [from ngx_buf_tag_t]
!728 = metadata !{i32 786445, metadata !712, metadata !"output_filter", metadata !150, i32 106, i64 32, i64 32, i64 384, i32 0, metadata !729} ; [ DW_TAG_member ] [output_filter] [line 106, size 32, align 32, offset 384] [from ngx_output_chain_filter_pt]
!729 = metadata !{i32 786454, null, metadata !"ngx_output_chain_filter_pt", metadata !150, i32 73, i64 0, i64 0, i64 0, i32 0, metadata !658} ; [ DW_TAG_typedef ] [ngx_output_chain_filter_pt] [line 73, size 0, align 0, offset 0] [from ]
!730 = metadata !{i32 786445, metadata !712, metadata !"filter_ctx", metadata !150, i32 107, i64 32, i64 32, i64 416, i32 0, metadata !27} ; [ DW_TAG_member ] [filter_ctx] [line 107, size 32, align 32, offset 416] [from ]
!731 = metadata !{i32 786445, metadata !585, metadata !"writer", metadata !586, i32 272, i64 192, i64 32, i64 960, i32 0, metadata !732} ; [ DW_TAG_member ] [writer] [line 272, size 192, align 32, offset 960] [from ngx_chain_writer_ctx_t]
!732 = metadata !{i32 786454, null, metadata !"ngx_chain_writer_ctx_t", metadata !586, i32 117, i64 0, i64 0, i64 0, i32 0, metadata !733} ; [ DW_TAG_typedef ] [ngx_chain_writer_ctx_t] [line 117, size 0, align 0, offset 0] [from ]
!733 = metadata !{i32 786451, null, metadata !"", metadata !150, i32 111, i64 192, i64 32, i32 0, i32 0, null, metadata !734, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 111, size 192, align 32, offset 0] [from ]
!734 = metadata !{metadata !735, metadata !736, metadata !737, metadata !738, metadata !739}
!735 = metadata !{i32 786445, metadata !733, metadata !"out", metadata !150, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !147} ; [ DW_TAG_member ] [out] [line 112, size 32, align 32, offset 0] [from ]
!736 = metadata !{i32 786445, metadata !733, metadata !"last", metadata !150, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !644} ; [ DW_TAG_member ] [last] [line 113, size 32, align 32, offset 32] [from ]
!737 = metadata !{i32 786445, metadata !733, metadata !"connection", metadata !150, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [connection] [line 114, size 32, align 32, offset 64] [from ]
!738 = metadata !{i32 786445, metadata !733, metadata !"pool", metadata !150, i32 115, i64 32, i64 32, i64 96, i32 0, metadata !303} ; [ DW_TAG_member ] [pool] [line 115, size 32, align 32, offset 96] [from ]
!739 = metadata !{i32 786445, metadata !733, metadata !"limit", metadata !150, i32 116, i64 64, i64 32, i64 128, i32 0, metadata !160} ; [ DW_TAG_member ] [limit] [line 116, size 64, align 32, offset 128] [from off_t]
!740 = metadata !{i32 786445, metadata !585, metadata !"conf", metadata !586, i32 274, i64 32, i64 32, i64 1152, i32 0, metadata !741} ; [ DW_TAG_member ] [conf] [line 274, size 32, align 32, offset 1152] [from ]
!741 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !742} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_conf_t]
!742 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_conf_t", metadata !586, i32 190, i64 0, i64 0, i64 0, i32 0, metadata !743} ; [ DW_TAG_typedef ] [ngx_http_upstream_conf_t] [line 190, size 0, align 0, offset 0] [from ]
!743 = metadata !{i32 786451, null, metadata !"", metadata !586, i32 122, i64 1408, i64 32, i32 0, i32 0, null, metadata !744, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 122, size 1408, align 32, offset 0] [from ]
!744 = metadata !{metadata !745, metadata !864, metadata !865, metadata !866, metadata !867, metadata !868, metadata !869, metadata !870, metadata !871, metadata !872, metadata !873, metadata !874, metadata !875, metadata !876, metadata !877, metadata !878, metadata !879, metadata !880, metadata !882, metadata !883, metadata !884, metadata !885, metadata !886, metadata !887, metadata !888, metadata !908, metadata !909, metadata !910, metadata !911, metadata !912, metadata !913, metadata !914, metadata !915, metadata !916, metadata !917, metadata !918, metadata !919, metadata !920, metadata !921, metadata !922, metadata !923, metadata !924, metadata !925}
!745 = metadata !{i32 786445, metadata !743, metadata !"upstream", metadata !586, i32 123, i64 32, i64 32, i64 0, i32 0, metadata !746} ; [ DW_TAG_member ] [upstream] [line 123, size 32, align 32, offset 0] [from ]
!746 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !747} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_srv_conf_t]
!747 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_srv_conf_t", metadata !586, i32 72, i64 0, i64 0, i64 0, i32 0, metadata !748} ; [ DW_TAG_typedef ] [ngx_http_upstream_srv_conf_t] [line 72, size 0, align 0, offset 0] [from ngx_http_upstream_srv_conf_s]
!748 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_srv_conf_s", metadata !586, i32 107, i64 352, i64 32, i32 0, i32 0, null, metadata !749, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_srv_conf_s] [line 107, size 352, align 32, offset 0] [from ]
!749 = metadata !{metadata !750, metadata !854, metadata !855, metadata !856, metadata !857, metadata !858, metadata !859, metadata !860, metadata !863}
!750 = metadata !{i32 786445, metadata !748, metadata !"peer", metadata !586, i32 108, i64 96, i64 32, i64 0, i32 0, metadata !751} ; [ DW_TAG_member ] [peer] [line 108, size 96, align 32, offset 0] [from ngx_http_upstream_peer_t]
!751 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_peer_t", metadata !586, i32 84, i64 0, i64 0, i64 0, i32 0, metadata !752} ; [ DW_TAG_typedef ] [ngx_http_upstream_peer_t] [line 84, size 0, align 0, offset 0] [from ]
!752 = metadata !{i32 786451, null, metadata !"", metadata !586, i32 80, i64 96, i64 32, i32 0, i32 0, null, metadata !753, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 80, size 96, align 32, offset 0] [from ]
!753 = metadata !{metadata !754, metadata !848, metadata !853}
!754 = metadata !{i32 786445, metadata !752, metadata !"init_upstream", metadata !586, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !755} ; [ DW_TAG_member ] [init_upstream] [line 81, size 32, align 32, offset 0] [from ngx_http_upstream_init_pt]
!755 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_pt", metadata !586, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !756} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_pt] [line 74, size 0, align 0, offset 0] [from ]
!756 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !757} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!757 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !758, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!758 = metadata !{metadata !8, metadata !759, metadata !746}
!759 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !760} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_t]
!760 = metadata !{i32 786454, null, metadata !"ngx_conf_t", metadata !586, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !761} ; [ DW_TAG_typedef ] [ngx_conf_t] [line 13, size 0, align 0, offset 0] [from ngx_conf_s]
!761 = metadata !{i32 786451, null, metadata !"ngx_conf_s", metadata !75, i32 166, i64 384, i64 32, i32 0, i32 0, null, metadata !762, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_conf_s] [line 166, size 384, align 32, offset 0] [from ]
!762 = metadata !{metadata !763, metadata !764, metadata !766, metadata !816, metadata !817, metadata !818, metadata !826, metadata !827, metadata !828, metadata !829, metadata !830, metadata !847}
!763 = metadata !{i32 786445, metadata !761, metadata !"name", metadata !75, i32 167, i64 32, i64 32, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [name] [line 167, size 32, align 32, offset 0] [from ]
!764 = metadata !{i32 786445, metadata !761, metadata !"args", metadata !75, i32 168, i64 32, i64 32, i64 32, i32 0, metadata !765} ; [ DW_TAG_member ] [args] [line 168, size 32, align 32, offset 32] [from ]
!765 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !392} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_array_t]
!766 = metadata !{i32 786445, metadata !761, metadata !"cycle", metadata !75, i32 170, i64 32, i64 32, i64 64, i32 0, metadata !767} ; [ DW_TAG_member ] [cycle] [line 170, size 32, align 32, offset 64] [from ]
!767 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !768} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!768 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !75, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !769} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!769 = metadata !{i32 786451, null, metadata !"ngx_cycle_s", metadata !529, i32 37, i64 1792, i64 32, i32 0, i32 0, null, metadata !770, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_cycle_s] [line 37, size 1792, align 32, offset 0] [from ]
!770 = metadata !{metadata !771, metadata !774, metadata !775, metadata !776, metadata !777, metadata !779, metadata !780, metadata !781, metadata !782, metadata !783, metadata !784, metadata !801, metadata !802, metadata !803, metadata !804, metadata !805, metadata !806, metadata !807, metadata !810, metadata !811, metadata !812, metadata !813, metadata !814, metadata !815}
!771 = metadata !{i32 786445, metadata !769, metadata !"conf_ctx", metadata !529, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !772} ; [ DW_TAG_member ] [conf_ctx] [line 38, size 32, align 32, offset 0] [from ]
!772 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !773} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!773 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !372} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!774 = metadata !{i32 786445, metadata !769, metadata !"pool", metadata !529, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !303} ; [ DW_TAG_member ] [pool] [line 39, size 32, align 32, offset 32] [from ]
!775 = metadata !{i32 786445, metadata !769, metadata !"log", metadata !529, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !65} ; [ DW_TAG_member ] [log] [line 41, size 32, align 32, offset 64] [from ]
!776 = metadata !{i32 786445, metadata !769, metadata !"new_log", metadata !529, i32 42, i64 192, i64 32, i64 96, i32 0, metadata !66} ; [ DW_TAG_member ] [new_log] [line 42, size 192, align 32, offset 96] [from ngx_log_t]
!777 = metadata !{i32 786445, metadata !769, metadata !"files", metadata !529, i32 44, i64 32, i64 32, i64 288, i32 0, metadata !778} ; [ DW_TAG_member ] [files] [line 44, size 32, align 32, offset 288] [from ]
!778 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!779 = metadata !{i32 786445, metadata !769, metadata !"free_connections", metadata !529, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [free_connections] [line 45, size 32, align 32, offset 320] [from ]
!780 = metadata !{i32 786445, metadata !769, metadata !"free_connection_n", metadata !529, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !62} ; [ DW_TAG_member ] [free_connection_n] [line 46, size 32, align 32, offset 352] [from ngx_uint_t]
!781 = metadata !{i32 786445, metadata !769, metadata !"reusable_connections_queue", metadata !529, i32 48, i64 64, i64 32, i64 384, i32 0, metadata !347} ; [ DW_TAG_member ] [reusable_connections_queue] [line 48, size 64, align 32, offset 384] [from ngx_queue_t]
!782 = metadata !{i32 786445, metadata !769, metadata !"listening", metadata !529, i32 50, i64 160, i64 32, i64 448, i32 0, metadata !392} ; [ DW_TAG_member ] [listening] [line 50, size 160, align 32, offset 448] [from ngx_array_t]
!783 = metadata !{i32 786445, metadata !769, metadata !"pathes", metadata !529, i32 51, i64 160, i64 32, i64 608, i32 0, metadata !392} ; [ DW_TAG_member ] [pathes] [line 51, size 160, align 32, offset 608] [from ngx_array_t]
!784 = metadata !{i32 786445, metadata !769, metadata !"open_files", metadata !529, i32 52, i64 224, i64 32, i64 768, i32 0, metadata !785} ; [ DW_TAG_member ] [open_files] [line 52, size 224, align 32, offset 768] [from ngx_list_t]
!785 = metadata !{i32 786454, null, metadata !"ngx_list_t", metadata !529, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !786} ; [ DW_TAG_typedef ] [ngx_list_t] [line 31, size 0, align 0, offset 0] [from ]
!786 = metadata !{i32 786451, null, metadata !"", metadata !787, i32 25, i64 224, i64 32, i32 0, i32 0, null, metadata !788, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 224, align 32, offset 0] [from ]
!787 = metadata !{i32 786473, metadata !"src/core/ngx_list.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!788 = metadata !{metadata !789, metadata !797, metadata !798, metadata !799, metadata !800}
!789 = metadata !{i32 786445, metadata !786, metadata !"last", metadata !787, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !790} ; [ DW_TAG_member ] [last] [line 26, size 32, align 32, offset 0] [from ]
!790 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !791} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_list_part_t]
!791 = metadata !{i32 786454, null, metadata !"ngx_list_part_t", metadata !787, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !792} ; [ DW_TAG_typedef ] [ngx_list_part_t] [line 16, size 0, align 0, offset 0] [from ngx_list_part_s]
!792 = metadata !{i32 786451, null, metadata !"ngx_list_part_s", metadata !787, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !793, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_list_part_s] [line 18, size 96, align 32, offset 0] [from ]
!793 = metadata !{metadata !794, metadata !795, metadata !796}
!794 = metadata !{i32 786445, metadata !792, metadata !"elts", metadata !787, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [elts] [line 19, size 32, align 32, offset 0] [from ]
!795 = metadata !{i32 786445, metadata !792, metadata !"nelts", metadata !787, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [nelts] [line 20, size 32, align 32, offset 32] [from ngx_uint_t]
!796 = metadata !{i32 786445, metadata !792, metadata !"next", metadata !787, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !790} ; [ DW_TAG_member ] [next] [line 21, size 32, align 32, offset 64] [from ]
!797 = metadata !{i32 786445, metadata !786, metadata !"part", metadata !787, i32 27, i64 96, i64 32, i64 32, i32 0, metadata !791} ; [ DW_TAG_member ] [part] [line 27, size 96, align 32, offset 32] [from ngx_list_part_t]
!798 = metadata !{i32 786445, metadata !786, metadata !"size", metadata !787, i32 28, i64 32, i64 32, i64 128, i32 0, metadata !85} ; [ DW_TAG_member ] [size] [line 28, size 32, align 32, offset 128] [from size_t]
!799 = metadata !{i32 786445, metadata !786, metadata !"nalloc", metadata !787, i32 29, i64 32, i64 32, i64 160, i32 0, metadata !62} ; [ DW_TAG_member ] [nalloc] [line 29, size 32, align 32, offset 160] [from ngx_uint_t]
!800 = metadata !{i32 786445, metadata !786, metadata !"pool", metadata !787, i32 30, i64 32, i64 32, i64 192, i32 0, metadata !303} ; [ DW_TAG_member ] [pool] [line 30, size 32, align 32, offset 192] [from ]
!801 = metadata !{i32 786445, metadata !769, metadata !"shared_memory", metadata !529, i32 53, i64 224, i64 32, i64 992, i32 0, metadata !785} ; [ DW_TAG_member ] [shared_memory] [line 53, size 224, align 32, offset 992] [from ngx_list_t]
!802 = metadata !{i32 786445, metadata !769, metadata !"connection_n", metadata !529, i32 55, i64 32, i64 32, i64 1216, i32 0, metadata !62} ; [ DW_TAG_member ] [connection_n] [line 55, size 32, align 32, offset 1216] [from ngx_uint_t]
!803 = metadata !{i32 786445, metadata !769, metadata !"files_n", metadata !529, i32 56, i64 32, i64 32, i64 1248, i32 0, metadata !62} ; [ DW_TAG_member ] [files_n] [line 56, size 32, align 32, offset 1248] [from ngx_uint_t]
!804 = metadata !{i32 786445, metadata !769, metadata !"connections", metadata !529, i32 58, i64 32, i64 32, i64 1280, i32 0, metadata !21} ; [ DW_TAG_member ] [connections] [line 58, size 32, align 32, offset 1280] [from ]
!805 = metadata !{i32 786445, metadata !769, metadata !"read_events", metadata !529, i32 59, i64 32, i64 32, i64 1312, i32 0, metadata !29} ; [ DW_TAG_member ] [read_events] [line 59, size 32, align 32, offset 1312] [from ]
!806 = metadata !{i32 786445, metadata !769, metadata !"write_events", metadata !529, i32 60, i64 32, i64 32, i64 1344, i32 0, metadata !29} ; [ DW_TAG_member ] [write_events] [line 60, size 32, align 32, offset 1344] [from ]
!807 = metadata !{i32 786445, metadata !769, metadata !"old_cycle", metadata !529, i32 62, i64 32, i64 32, i64 1376, i32 0, metadata !808} ; [ DW_TAG_member ] [old_cycle] [line 62, size 32, align 32, offset 1376] [from ]
!808 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !809} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!809 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !529, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !769} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!810 = metadata !{i32 786445, metadata !769, metadata !"conf_file", metadata !529, i32 64, i64 64, i64 32, i64 1408, i32 0, metadata !80} ; [ DW_TAG_member ] [conf_file] [line 64, size 64, align 32, offset 1408] [from ngx_str_t]
!811 = metadata !{i32 786445, metadata !769, metadata !"conf_param", metadata !529, i32 65, i64 64, i64 32, i64 1472, i32 0, metadata !80} ; [ DW_TAG_member ] [conf_param] [line 65, size 64, align 32, offset 1472] [from ngx_str_t]
!812 = metadata !{i32 786445, metadata !769, metadata !"conf_prefix", metadata !529, i32 66, i64 64, i64 32, i64 1536, i32 0, metadata !80} ; [ DW_TAG_member ] [conf_prefix] [line 66, size 64, align 32, offset 1536] [from ngx_str_t]
!813 = metadata !{i32 786445, metadata !769, metadata !"prefix", metadata !529, i32 67, i64 64, i64 32, i64 1600, i32 0, metadata !80} ; [ DW_TAG_member ] [prefix] [line 67, size 64, align 32, offset 1600] [from ngx_str_t]
!814 = metadata !{i32 786445, metadata !769, metadata !"lock_file", metadata !529, i32 68, i64 64, i64 32, i64 1664, i32 0, metadata !80} ; [ DW_TAG_member ] [lock_file] [line 68, size 64, align 32, offset 1664] [from ngx_str_t]
!815 = metadata !{i32 786445, metadata !769, metadata !"hostname", metadata !529, i32 69, i64 64, i64 32, i64 1728, i32 0, metadata !80} ; [ DW_TAG_member ] [hostname] [line 69, size 64, align 32, offset 1728] [from ngx_str_t]
!816 = metadata !{i32 786445, metadata !761, metadata !"pool", metadata !75, i32 171, i64 32, i64 32, i64 96, i32 0, metadata !303} ; [ DW_TAG_member ] [pool] [line 171, size 32, align 32, offset 96] [from ]
!817 = metadata !{i32 786445, metadata !761, metadata !"temp_pool", metadata !75, i32 172, i64 32, i64 32, i64 128, i32 0, metadata !303} ; [ DW_TAG_member ] [temp_pool] [line 172, size 32, align 32, offset 128] [from ]
!818 = metadata !{i32 786445, metadata !761, metadata !"conf_file", metadata !75, i32 173, i64 32, i64 32, i64 160, i32 0, metadata !819} ; [ DW_TAG_member ] [conf_file] [line 173, size 32, align 32, offset 160] [from ]
!819 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !820} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_file_t]
!820 = metadata !{i32 786454, null, metadata !"ngx_conf_file_t", metadata !75, i32 159, i64 0, i64 0, i64 0, i32 0, metadata !821} ; [ DW_TAG_typedef ] [ngx_conf_file_t] [line 159, size 0, align 0, offset 0] [from ]
!821 = metadata !{i32 786451, null, metadata !"", metadata !75, i32 155, i64 1120, i64 32, i32 0, i32 0, null, metadata !822, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 155, size 1120, align 32, offset 0] [from ]
!822 = metadata !{metadata !823, metadata !824, metadata !825}
!823 = metadata !{i32 786445, metadata !821, metadata !"file", metadata !75, i32 156, i64 1056, i64 32, i64 0, i32 0, metadata !171} ; [ DW_TAG_member ] [file] [line 156, size 1056, align 32, offset 0] [from ngx_file_t]
!824 = metadata !{i32 786445, metadata !821, metadata !"buffer", metadata !75, i32 157, i64 32, i64 32, i64 1056, i32 0, metadata !153} ; [ DW_TAG_member ] [buffer] [line 157, size 32, align 32, offset 1056] [from ]
!825 = metadata !{i32 786445, metadata !821, metadata !"line", metadata !75, i32 158, i64 32, i64 32, i64 1088, i32 0, metadata !62} ; [ DW_TAG_member ] [line] [line 158, size 32, align 32, offset 1088] [from ngx_uint_t]
!826 = metadata !{i32 786445, metadata !761, metadata !"log", metadata !75, i32 174, i64 32, i64 32, i64 192, i32 0, metadata !65} ; [ DW_TAG_member ] [log] [line 174, size 32, align 32, offset 192] [from ]
!827 = metadata !{i32 786445, metadata !761, metadata !"ctx", metadata !75, i32 176, i64 32, i64 32, i64 224, i32 0, metadata !27} ; [ DW_TAG_member ] [ctx] [line 176, size 32, align 32, offset 224] [from ]
!828 = metadata !{i32 786445, metadata !761, metadata !"module_type", metadata !75, i32 177, i64 32, i64 32, i64 256, i32 0, metadata !62} ; [ DW_TAG_member ] [module_type] [line 177, size 32, align 32, offset 256] [from ngx_uint_t]
!829 = metadata !{i32 786445, metadata !761, metadata !"cmd_type", metadata !75, i32 178, i64 32, i64 32, i64 288, i32 0, metadata !62} ; [ DW_TAG_member ] [cmd_type] [line 178, size 32, align 32, offset 288] [from ngx_uint_t]
!830 = metadata !{i32 786445, metadata !761, metadata !"handler", metadata !75, i32 180, i64 32, i64 32, i64 320, i32 0, metadata !831} ; [ DW_TAG_member ] [handler] [line 180, size 32, align 32, offset 320] [from ngx_conf_handler_pt]
!831 = metadata !{i32 786454, null, metadata !"ngx_conf_handler_pt", metadata !75, i32 162, i64 0, i64 0, i64 0, i32 0, metadata !832} ; [ DW_TAG_typedef ] [ngx_conf_handler_pt] [line 162, size 0, align 0, offset 0] [from ]
!832 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !833} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!833 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !834, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!834 = metadata !{metadata !106, metadata !835, metadata !837, metadata !27}
!835 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !836} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_t]
!836 = metadata !{i32 786454, null, metadata !"ngx_conf_t", metadata !75, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !761} ; [ DW_TAG_typedef ] [ngx_conf_t] [line 13, size 0, align 0, offset 0] [from ngx_conf_s]
!837 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !838} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_command_t]
!838 = metadata !{i32 786454, null, metadata !"ngx_command_t", metadata !75, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !839} ; [ DW_TAG_typedef ] [ngx_command_t] [line 20, size 0, align 0, offset 0] [from ngx_command_s]
!839 = metadata !{i32 786451, null, metadata !"ngx_command_s", metadata !75, i32 78, i64 224, i64 32, i32 0, i32 0, null, metadata !840, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_command_s] [line 78, size 224, align 32, offset 0] [from ]
!840 = metadata !{metadata !841, metadata !842, metadata !843, metadata !844, metadata !845, metadata !846}
!841 = metadata !{i32 786445, metadata !839, metadata !"name", metadata !75, i32 79, i64 64, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [name] [line 79, size 64, align 32, offset 0] [from ngx_str_t]
!842 = metadata !{i32 786445, metadata !839, metadata !"type", metadata !75, i32 80, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 64] [from ngx_uint_t]
!843 = metadata !{i32 786445, metadata !839, metadata !"set", metadata !75, i32 81, i64 32, i64 32, i64 96, i32 0, metadata !832} ; [ DW_TAG_member ] [set] [line 81, size 32, align 32, offset 96] [from ]
!844 = metadata !{i32 786445, metadata !839, metadata !"conf", metadata !75, i32 82, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [conf] [line 82, size 32, align 32, offset 128] [from ngx_uint_t]
!845 = metadata !{i32 786445, metadata !839, metadata !"offset", metadata !75, i32 83, i64 32, i64 32, i64 160, i32 0, metadata !62} ; [ DW_TAG_member ] [offset] [line 83, size 32, align 32, offset 160] [from ngx_uint_t]
!846 = metadata !{i32 786445, metadata !839, metadata !"post", metadata !75, i32 84, i64 32, i64 32, i64 192, i32 0, metadata !27} ; [ DW_TAG_member ] [post] [line 84, size 32, align 32, offset 192] [from ]
!847 = metadata !{i32 786445, metadata !761, metadata !"handler_conf", metadata !75, i32 181, i64 32, i64 32, i64 352, i32 0, metadata !106} ; [ DW_TAG_member ] [handler_conf] [line 181, size 32, align 32, offset 352] [from ]
!848 = metadata !{i32 786445, metadata !752, metadata !"init", metadata !586, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !849} ; [ DW_TAG_member ] [init] [line 82, size 32, align 32, offset 32] [from ngx_http_upstream_init_peer_pt]
!849 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_peer_pt", metadata !586, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !850} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_peer_pt] [line 76, size 0, align 0, offset 0] [from ]
!850 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !851} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!851 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !852, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!852 = metadata !{metadata !8, metadata !381, metadata !746}
!853 = metadata !{i32 786445, metadata !752, metadata !"data", metadata !586, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 83, size 32, align 32, offset 64] [from ]
!854 = metadata !{i32 786445, metadata !748, metadata !"srv_conf", metadata !586, i32 109, i64 32, i64 32, i64 96, i32 0, metadata !372} ; [ DW_TAG_member ] [srv_conf] [line 109, size 32, align 32, offset 96] [from ]
!855 = metadata !{i32 786445, metadata !748, metadata !"servers", metadata !586, i32 111, i64 32, i64 32, i64 128, i32 0, metadata !765} ; [ DW_TAG_member ] [servers] [line 111, size 32, align 32, offset 128] [from ]
!856 = metadata !{i32 786445, metadata !748, metadata !"flags", metadata !586, i32 113, i64 32, i64 32, i64 160, i32 0, metadata !62} ; [ DW_TAG_member ] [flags] [line 113, size 32, align 32, offset 160] [from ngx_uint_t]
!857 = metadata !{i32 786445, metadata !748, metadata !"host", metadata !586, i32 114, i64 64, i64 32, i64 192, i32 0, metadata !80} ; [ DW_TAG_member ] [host] [line 114, size 64, align 32, offset 192] [from ngx_str_t]
!858 = metadata !{i32 786445, metadata !748, metadata !"file_name", metadata !586, i32 115, i64 32, i64 32, i64 256, i32 0, metadata !87} ; [ DW_TAG_member ] [file_name] [line 115, size 32, align 32, offset 256] [from ]
!859 = metadata !{i32 786445, metadata !748, metadata !"line", metadata !586, i32 116, i64 32, i64 32, i64 288, i32 0, metadata !62} ; [ DW_TAG_member ] [line] [line 116, size 32, align 32, offset 288] [from ngx_uint_t]
!860 = metadata !{i32 786445, metadata !748, metadata !"port", metadata !586, i32 117, i64 16, i64 16, i64 320, i32 0, metadata !861} ; [ DW_TAG_member ] [port] [line 117, size 16, align 16, offset 320] [from in_port_t]
!861 = metadata !{i32 786454, null, metadata !"in_port_t", metadata !586, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !862} ; [ DW_TAG_typedef ] [in_port_t] [line 97, size 0, align 0, offset 0] [from uint16_t]
!862 = metadata !{i32 786454, null, metadata !"uint16_t", metadata !586, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_typedef ] [uint16_t] [line 50, size 0, align 0, offset 0] [from unsigned short]
!863 = metadata !{i32 786445, metadata !748, metadata !"default_port", metadata !586, i32 118, i64 16, i64 16, i64 336, i32 0, metadata !861} ; [ DW_TAG_member ] [default_port] [line 118, size 16, align 16, offset 336] [from in_port_t]
!864 = metadata !{i32 786445, metadata !743, metadata !"connect_timeout", metadata !586, i32 125, i64 32, i64 32, i64 32, i32 0, metadata !283} ; [ DW_TAG_member ] [connect_timeout] [line 125, size 32, align 32, offset 32] [from ngx_msec_t]
!865 = metadata !{i32 786445, metadata !743, metadata !"send_timeout", metadata !586, i32 126, i64 32, i64 32, i64 64, i32 0, metadata !283} ; [ DW_TAG_member ] [send_timeout] [line 126, size 32, align 32, offset 64] [from ngx_msec_t]
!866 = metadata !{i32 786445, metadata !743, metadata !"read_timeout", metadata !586, i32 127, i64 32, i64 32, i64 96, i32 0, metadata !283} ; [ DW_TAG_member ] [read_timeout] [line 127, size 32, align 32, offset 96] [from ngx_msec_t]
!867 = metadata !{i32 786445, metadata !743, metadata !"timeout", metadata !586, i32 128, i64 32, i64 32, i64 128, i32 0, metadata !283} ; [ DW_TAG_member ] [timeout] [line 128, size 32, align 32, offset 128] [from ngx_msec_t]
!868 = metadata !{i32 786445, metadata !743, metadata !"send_lowat", metadata !586, i32 130, i64 32, i64 32, i64 160, i32 0, metadata !85} ; [ DW_TAG_member ] [send_lowat] [line 130, size 32, align 32, offset 160] [from size_t]
!869 = metadata !{i32 786445, metadata !743, metadata !"buffer_size", metadata !586, i32 131, i64 32, i64 32, i64 192, i32 0, metadata !85} ; [ DW_TAG_member ] [buffer_size] [line 131, size 32, align 32, offset 192] [from size_t]
!870 = metadata !{i32 786445, metadata !743, metadata !"busy_buffers_size", metadata !586, i32 133, i64 32, i64 32, i64 224, i32 0, metadata !85} ; [ DW_TAG_member ] [busy_buffers_size] [line 133, size 32, align 32, offset 224] [from size_t]
!871 = metadata !{i32 786445, metadata !743, metadata !"max_temp_file_size", metadata !586, i32 134, i64 32, i64 32, i64 256, i32 0, metadata !85} ; [ DW_TAG_member ] [max_temp_file_size] [line 134, size 32, align 32, offset 256] [from size_t]
!872 = metadata !{i32 786445, metadata !743, metadata !"temp_file_write_size", metadata !586, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !85} ; [ DW_TAG_member ] [temp_file_write_size] [line 135, size 32, align 32, offset 288] [from size_t]
!873 = metadata !{i32 786445, metadata !743, metadata !"busy_buffers_size_conf", metadata !586, i32 137, i64 32, i64 32, i64 320, i32 0, metadata !85} ; [ DW_TAG_member ] [busy_buffers_size_conf] [line 137, size 32, align 32, offset 320] [from size_t]
!874 = metadata !{i32 786445, metadata !743, metadata !"max_temp_file_size_conf", metadata !586, i32 138, i64 32, i64 32, i64 352, i32 0, metadata !85} ; [ DW_TAG_member ] [max_temp_file_size_conf] [line 138, size 32, align 32, offset 352] [from size_t]
!875 = metadata !{i32 786445, metadata !743, metadata !"temp_file_write_size_conf", metadata !586, i32 139, i64 32, i64 32, i64 384, i32 0, metadata !85} ; [ DW_TAG_member ] [temp_file_write_size_conf] [line 139, size 32, align 32, offset 384] [from size_t]
!876 = metadata !{i32 786445, metadata !743, metadata !"bufs", metadata !586, i32 141, i64 64, i64 32, i64 416, i32 0, metadata !675} ; [ DW_TAG_member ] [bufs] [line 141, size 64, align 32, offset 416] [from ngx_bufs_t]
!877 = metadata !{i32 786445, metadata !743, metadata !"ignore_headers", metadata !586, i32 143, i64 32, i64 32, i64 480, i32 0, metadata !62} ; [ DW_TAG_member ] [ignore_headers] [line 143, size 32, align 32, offset 480] [from ngx_uint_t]
!878 = metadata !{i32 786445, metadata !743, metadata !"next_upstream", metadata !586, i32 144, i64 32, i64 32, i64 512, i32 0, metadata !62} ; [ DW_TAG_member ] [next_upstream] [line 144, size 32, align 32, offset 512] [from ngx_uint_t]
!879 = metadata !{i32 786445, metadata !743, metadata !"store_access", metadata !586, i32 145, i64 32, i64 32, i64 544, i32 0, metadata !62} ; [ DW_TAG_member ] [store_access] [line 145, size 32, align 32, offset 544] [from ngx_uint_t]
!880 = metadata !{i32 786445, metadata !743, metadata !"buffering", metadata !586, i32 146, i64 32, i64 32, i64 576, i32 0, metadata !881} ; [ DW_TAG_member ] [buffering] [line 146, size 32, align 32, offset 576] [from ngx_flag_t]
!881 = metadata !{i32 786454, null, metadata !"ngx_flag_t", metadata !586, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [ngx_flag_t] [line 80, size 0, align 0, offset 0] [from intptr_t]
!882 = metadata !{i32 786445, metadata !743, metadata !"pass_request_headers", metadata !586, i32 147, i64 32, i64 32, i64 608, i32 0, metadata !881} ; [ DW_TAG_member ] [pass_request_headers] [line 147, size 32, align 32, offset 608] [from ngx_flag_t]
!883 = metadata !{i32 786445, metadata !743, metadata !"pass_request_body", metadata !586, i32 148, i64 32, i64 32, i64 640, i32 0, metadata !881} ; [ DW_TAG_member ] [pass_request_body] [line 148, size 32, align 32, offset 640] [from ngx_flag_t]
!884 = metadata !{i32 786445, metadata !743, metadata !"ignore_client_abort", metadata !586, i32 150, i64 32, i64 32, i64 672, i32 0, metadata !881} ; [ DW_TAG_member ] [ignore_client_abort] [line 150, size 32, align 32, offset 672] [from ngx_flag_t]
!885 = metadata !{i32 786445, metadata !743, metadata !"intercept_errors", metadata !586, i32 151, i64 32, i64 32, i64 704, i32 0, metadata !881} ; [ DW_TAG_member ] [intercept_errors] [line 151, size 32, align 32, offset 704] [from ngx_flag_t]
!886 = metadata !{i32 786445, metadata !743, metadata !"cyclic_temp_file", metadata !586, i32 152, i64 32, i64 32, i64 736, i32 0, metadata !881} ; [ DW_TAG_member ] [cyclic_temp_file] [line 152, size 32, align 32, offset 736] [from ngx_flag_t]
!887 = metadata !{i32 786445, metadata !743, metadata !"temp_path", metadata !586, i32 154, i64 32, i64 32, i64 768, i32 0, metadata !497} ; [ DW_TAG_member ] [temp_path] [line 154, size 32, align 32, offset 768] [from ]
!888 = metadata !{i32 786445, metadata !743, metadata !"hide_headers_hash", metadata !586, i32 156, i64 64, i64 32, i64 800, i32 0, metadata !889} ; [ DW_TAG_member ] [hide_headers_hash] [line 156, size 64, align 32, offset 800] [from ngx_hash_t]
!889 = metadata !{i32 786454, null, metadata !"ngx_hash_t", metadata !586, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !890} ; [ DW_TAG_typedef ] [ngx_hash_t] [line 26, size 0, align 0, offset 0] [from ]
!890 = metadata !{i32 786451, null, metadata !"", metadata !891, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !892, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!891 = metadata !{i32 786473, metadata !"src/core/ngx_hash.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!892 = metadata !{metadata !893, metadata !907}
!893 = metadata !{i32 786445, metadata !890, metadata !"buckets", metadata !891, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !894} ; [ DW_TAG_member ] [buckets] [line 24, size 32, align 32, offset 0] [from ]
!894 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !895} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!895 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !896} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_elt_t]
!896 = metadata !{i32 786454, null, metadata !"ngx_hash_elt_t", metadata !891, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !897} ; [ DW_TAG_typedef ] [ngx_hash_elt_t] [line 20, size 0, align 0, offset 0] [from ]
!897 = metadata !{i32 786451, null, metadata !"", metadata !891, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !898, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!898 = metadata !{metadata !899, metadata !900, metadata !903}
!899 = metadata !{i32 786445, metadata !897, metadata !"value", metadata !891, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [value] [line 17, size 32, align 32, offset 0] [from ]
!900 = metadata !{i32 786445, metadata !897, metadata !"len", metadata !891, i32 18, i64 16, i64 16, i64 32, i32 0, metadata !901} ; [ DW_TAG_member ] [len] [line 18, size 16, align 16, offset 32] [from u_short]
!901 = metadata !{i32 786454, null, metadata !"u_short", metadata !891, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !902} ; [ DW_TAG_typedef ] [u_short] [line 35, size 0, align 0, offset 0] [from __u_short]
!902 = metadata !{i32 786454, null, metadata !"__u_short", metadata !891, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_typedef ] [__u_short] [line 32, size 0, align 0, offset 0] [from unsigned short]
!903 = metadata !{i32 786445, metadata !897, metadata !"name", metadata !891, i32 19, i64 8, i64 8, i64 48, i32 0, metadata !904} ; [ DW_TAG_member ] [name] [line 19, size 8, align 8, offset 48] [from ]
!904 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !88, metadata !905, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from u_char]
!905 = metadata !{metadata !906}
!906 = metadata !{i32 786465, i64 0, i64 0}       ; [ DW_TAG_subrange_type ] [0, 0]
!907 = metadata !{i32 786445, metadata !890, metadata !"size", metadata !891, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [size] [line 25, size 32, align 32, offset 32] [from ngx_uint_t]
!908 = metadata !{i32 786445, metadata !743, metadata !"hide_headers", metadata !586, i32 157, i64 32, i64 32, i64 864, i32 0, metadata !765} ; [ DW_TAG_member ] [hide_headers] [line 157, size 32, align 32, offset 864] [from ]
!909 = metadata !{i32 786445, metadata !743, metadata !"pass_headers", metadata !586, i32 158, i64 32, i64 32, i64 896, i32 0, metadata !765} ; [ DW_TAG_member ] [pass_headers] [line 158, size 32, align 32, offset 896] [from ]
!910 = metadata !{i32 786445, metadata !743, metadata !"local", metadata !586, i32 160, i64 32, i64 32, i64 928, i32 0, metadata !621} ; [ DW_TAG_member ] [local] [line 160, size 32, align 32, offset 928] [from ]
!911 = metadata !{i32 786445, metadata !743, metadata !"cache", metadata !586, i32 163, i64 32, i64 32, i64 960, i32 0, metadata !526} ; [ DW_TAG_member ] [cache] [line 163, size 32, align 32, offset 960] [from ]
!912 = metadata !{i32 786445, metadata !743, metadata !"cache_min_uses", metadata !586, i32 165, i64 32, i64 32, i64 992, i32 0, metadata !62} ; [ DW_TAG_member ] [cache_min_uses] [line 165, size 32, align 32, offset 992] [from ngx_uint_t]
!913 = metadata !{i32 786445, metadata !743, metadata !"cache_use_stale", metadata !586, i32 166, i64 32, i64 32, i64 1024, i32 0, metadata !62} ; [ DW_TAG_member ] [cache_use_stale] [line 166, size 32, align 32, offset 1024] [from ngx_uint_t]
!914 = metadata !{i32 786445, metadata !743, metadata !"cache_methods", metadata !586, i32 167, i64 32, i64 32, i64 1056, i32 0, metadata !62} ; [ DW_TAG_member ] [cache_methods] [line 167, size 32, align 32, offset 1056] [from ngx_uint_t]
!915 = metadata !{i32 786445, metadata !743, metadata !"cache_lock", metadata !586, i32 169, i64 32, i64 32, i64 1088, i32 0, metadata !881} ; [ DW_TAG_member ] [cache_lock] [line 169, size 32, align 32, offset 1088] [from ngx_flag_t]
!916 = metadata !{i32 786445, metadata !743, metadata !"cache_lock_timeout", metadata !586, i32 170, i64 32, i64 32, i64 1120, i32 0, metadata !283} ; [ DW_TAG_member ] [cache_lock_timeout] [line 170, size 32, align 32, offset 1120] [from ngx_msec_t]
!917 = metadata !{i32 786445, metadata !743, metadata !"cache_valid", metadata !586, i32 172, i64 32, i64 32, i64 1152, i32 0, metadata !765} ; [ DW_TAG_member ] [cache_valid] [line 172, size 32, align 32, offset 1152] [from ]
!918 = metadata !{i32 786445, metadata !743, metadata !"cache_bypass", metadata !586, i32 173, i64 32, i64 32, i64 1184, i32 0, metadata !765} ; [ DW_TAG_member ] [cache_bypass] [line 173, size 32, align 32, offset 1184] [from ]
!919 = metadata !{i32 786445, metadata !743, metadata !"no_cache", metadata !586, i32 174, i64 32, i64 32, i64 1216, i32 0, metadata !765} ; [ DW_TAG_member ] [no_cache] [line 174, size 32, align 32, offset 1216] [from ]
!920 = metadata !{i32 786445, metadata !743, metadata !"store_lengths", metadata !586, i32 177, i64 32, i64 32, i64 1248, i32 0, metadata !765} ; [ DW_TAG_member ] [store_lengths] [line 177, size 32, align 32, offset 1248] [from ]
!921 = metadata !{i32 786445, metadata !743, metadata !"store_values", metadata !586, i32 178, i64 32, i64 32, i64 1280, i32 0, metadata !765} ; [ DW_TAG_member ] [store_values] [line 178, size 32, align 32, offset 1280] [from ]
!922 = metadata !{i32 786445, metadata !743, metadata !"store", metadata !586, i32 180, i64 2, i64 32, i64 1312, i32 0, metadata !11} ; [ DW_TAG_member ] [store] [line 180, size 2, align 32, offset 1312] [from int]
!923 = metadata !{i32 786445, metadata !743, metadata !"intercept_404", metadata !586, i32 181, i64 1, i64 32, i64 1314, i32 0, metadata !19} ; [ DW_TAG_member ] [intercept_404] [line 181, size 1, align 32, offset 1314] [from unsigned int]
!924 = metadata !{i32 786445, metadata !743, metadata !"change_buffering", metadata !586, i32 182, i64 1, i64 32, i64 1315, i32 0, metadata !19} ; [ DW_TAG_member ] [change_buffering] [line 182, size 1, align 32, offset 1315] [from unsigned int]
!925 = metadata !{i32 786445, metadata !743, metadata !"module", metadata !586, i32 189, i64 64, i64 32, i64 1344, i32 0, metadata !80} ; [ DW_TAG_member ] [module] [line 189, size 64, align 32, offset 1344] [from ngx_str_t]
!926 = metadata !{i32 786445, metadata !585, metadata !"headers_in", metadata !586, i32 276, i64 1120, i64 32, i64 1184, i32 0, metadata !927} ; [ DW_TAG_member ] [headers_in] [line 276, size 1120, align 32, offset 1184] [from ngx_http_upstream_headers_in_t]
!927 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_headers_in_t", metadata !586, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !928} ; [ DW_TAG_typedef ] [ngx_http_upstream_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!928 = metadata !{i32 786451, null, metadata !"", metadata !586, i32 203, i64 1120, i64 32, i32 0, i32 0, null, metadata !929, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 203, size 1120, align 32, offset 0] [from ]
!929 = metadata !{metadata !930, metadata !931, metadata !932, metadata !933, metadata !942, metadata !943, metadata !944, metadata !945, metadata !946, metadata !947, metadata !948, metadata !949, metadata !950, metadata !951, metadata !952, metadata !953, metadata !954, metadata !955, metadata !956, metadata !957, metadata !958, metadata !959, metadata !960, metadata !961}
!930 = metadata !{i32 786445, metadata !928, metadata !"headers", metadata !586, i32 204, i64 224, i64 32, i64 0, i32 0, metadata !785} ; [ DW_TAG_member ] [headers] [line 204, size 224, align 32, offset 0] [from ngx_list_t]
!931 = metadata !{i32 786445, metadata !928, metadata !"status_n", metadata !586, i32 206, i64 32, i64 32, i64 224, i32 0, metadata !62} ; [ DW_TAG_member ] [status_n] [line 206, size 32, align 32, offset 224] [from ngx_uint_t]
!932 = metadata !{i32 786445, metadata !928, metadata !"status_line", metadata !586, i32 207, i64 64, i64 32, i64 256, i32 0, metadata !80} ; [ DW_TAG_member ] [status_line] [line 207, size 64, align 32, offset 256] [from ngx_str_t]
!933 = metadata !{i32 786445, metadata !928, metadata !"status", metadata !586, i32 209, i64 32, i64 32, i64 320, i32 0, metadata !934} ; [ DW_TAG_member ] [status] [line 209, size 32, align 32, offset 320] [from ]
!934 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !935} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_table_elt_t]
!935 = metadata !{i32 786454, null, metadata !"ngx_table_elt_t", metadata !586, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !936} ; [ DW_TAG_typedef ] [ngx_table_elt_t] [line 97, size 0, align 0, offset 0] [from ]
!936 = metadata !{i32 786451, null, metadata !"", metadata !891, i32 92, i64 192, i64 32, i32 0, i32 0, null, metadata !937, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 92, size 192, align 32, offset 0] [from ]
!937 = metadata !{metadata !938, metadata !939, metadata !940, metadata !941}
!938 = metadata !{i32 786445, metadata !936, metadata !"hash", metadata !891, i32 93, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [hash] [line 93, size 32, align 32, offset 0] [from ngx_uint_t]
!939 = metadata !{i32 786445, metadata !936, metadata !"key", metadata !891, i32 94, i64 64, i64 32, i64 32, i32 0, metadata !80} ; [ DW_TAG_member ] [key] [line 94, size 64, align 32, offset 32] [from ngx_str_t]
!940 = metadata !{i32 786445, metadata !936, metadata !"value", metadata !891, i32 95, i64 64, i64 32, i64 96, i32 0, metadata !80} ; [ DW_TAG_member ] [value] [line 95, size 64, align 32, offset 96] [from ngx_str_t]
!941 = metadata !{i32 786445, metadata !936, metadata !"lowcase_key", metadata !891, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !87} ; [ DW_TAG_member ] [lowcase_key] [line 96, size 32, align 32, offset 160] [from ]
!942 = metadata !{i32 786445, metadata !928, metadata !"date", metadata !586, i32 210, i64 32, i64 32, i64 352, i32 0, metadata !934} ; [ DW_TAG_member ] [date] [line 210, size 32, align 32, offset 352] [from ]
!943 = metadata !{i32 786445, metadata !928, metadata !"server", metadata !586, i32 211, i64 32, i64 32, i64 384, i32 0, metadata !934} ; [ DW_TAG_member ] [server] [line 211, size 32, align 32, offset 384] [from ]
!944 = metadata !{i32 786445, metadata !928, metadata !"connection", metadata !586, i32 212, i64 32, i64 32, i64 416, i32 0, metadata !934} ; [ DW_TAG_member ] [connection] [line 212, size 32, align 32, offset 416] [from ]
!945 = metadata !{i32 786445, metadata !928, metadata !"expires", metadata !586, i32 214, i64 32, i64 32, i64 448, i32 0, metadata !934} ; [ DW_TAG_member ] [expires] [line 214, size 32, align 32, offset 448] [from ]
!946 = metadata !{i32 786445, metadata !928, metadata !"etag", metadata !586, i32 215, i64 32, i64 32, i64 480, i32 0, metadata !934} ; [ DW_TAG_member ] [etag] [line 215, size 32, align 32, offset 480] [from ]
!947 = metadata !{i32 786445, metadata !928, metadata !"x_accel_expires", metadata !586, i32 216, i64 32, i64 32, i64 512, i32 0, metadata !934} ; [ DW_TAG_member ] [x_accel_expires] [line 216, size 32, align 32, offset 512] [from ]
!948 = metadata !{i32 786445, metadata !928, metadata !"x_accel_redirect", metadata !586, i32 217, i64 32, i64 32, i64 544, i32 0, metadata !934} ; [ DW_TAG_member ] [x_accel_redirect] [line 217, size 32, align 32, offset 544] [from ]
!949 = metadata !{i32 786445, metadata !928, metadata !"x_accel_limit_rate", metadata !586, i32 218, i64 32, i64 32, i64 576, i32 0, metadata !934} ; [ DW_TAG_member ] [x_accel_limit_rate] [line 218, size 32, align 32, offset 576] [from ]
!950 = metadata !{i32 786445, metadata !928, metadata !"content_type", metadata !586, i32 220, i64 32, i64 32, i64 608, i32 0, metadata !934} ; [ DW_TAG_member ] [content_type] [line 220, size 32, align 32, offset 608] [from ]
!951 = metadata !{i32 786445, metadata !928, metadata !"content_length", metadata !586, i32 221, i64 32, i64 32, i64 640, i32 0, metadata !934} ; [ DW_TAG_member ] [content_length] [line 221, size 32, align 32, offset 640] [from ]
!952 = metadata !{i32 786445, metadata !928, metadata !"last_modified", metadata !586, i32 223, i64 32, i64 32, i64 672, i32 0, metadata !934} ; [ DW_TAG_member ] [last_modified] [line 223, size 32, align 32, offset 672] [from ]
!953 = metadata !{i32 786445, metadata !928, metadata !"location", metadata !586, i32 224, i64 32, i64 32, i64 704, i32 0, metadata !934} ; [ DW_TAG_member ] [location] [line 224, size 32, align 32, offset 704] [from ]
!954 = metadata !{i32 786445, metadata !928, metadata !"accept_ranges", metadata !586, i32 225, i64 32, i64 32, i64 736, i32 0, metadata !934} ; [ DW_TAG_member ] [accept_ranges] [line 225, size 32, align 32, offset 736] [from ]
!955 = metadata !{i32 786445, metadata !928, metadata !"www_authenticate", metadata !586, i32 226, i64 32, i64 32, i64 768, i32 0, metadata !934} ; [ DW_TAG_member ] [www_authenticate] [line 226, size 32, align 32, offset 768] [from ]
!956 = metadata !{i32 786445, metadata !928, metadata !"transfer_encoding", metadata !586, i32 227, i64 32, i64 32, i64 800, i32 0, metadata !934} ; [ DW_TAG_member ] [transfer_encoding] [line 227, size 32, align 32, offset 800] [from ]
!957 = metadata !{i32 786445, metadata !928, metadata !"content_encoding", metadata !586, i32 230, i64 32, i64 32, i64 832, i32 0, metadata !934} ; [ DW_TAG_member ] [content_encoding] [line 230, size 32, align 32, offset 832] [from ]
!958 = metadata !{i32 786445, metadata !928, metadata !"content_length_n", metadata !586, i32 233, i64 64, i64 32, i64 864, i32 0, metadata !160} ; [ DW_TAG_member ] [content_length_n] [line 233, size 64, align 32, offset 864] [from off_t]
!959 = metadata !{i32 786445, metadata !928, metadata !"cache_control", metadata !586, i32 235, i64 160, i64 32, i64 928, i32 0, metadata !392} ; [ DW_TAG_member ] [cache_control] [line 235, size 160, align 32, offset 928] [from ngx_array_t]
!960 = metadata !{i32 786445, metadata !928, metadata !"connection_close", metadata !586, i32 237, i64 1, i64 32, i64 1088, i32 0, metadata !19} ; [ DW_TAG_member ] [connection_close] [line 237, size 1, align 32, offset 1088] [from unsigned int]
!961 = metadata !{i32 786445, metadata !928, metadata !"chunked", metadata !586, i32 238, i64 1, i64 32, i64 1089, i32 0, metadata !19} ; [ DW_TAG_member ] [chunked] [line 238, size 1, align 32, offset 1089] [from unsigned int]
!962 = metadata !{i32 786445, metadata !585, metadata !"resolved", metadata !586, i32 278, i64 32, i64 32, i64 2304, i32 0, metadata !963} ; [ DW_TAG_member ] [resolved] [line 278, size 32, align 32, offset 2304] [from ]
!963 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !964} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_resolved_t]
!964 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_resolved_t", metadata !586, i32 254, i64 0, i64 0, i64 0, i32 0, metadata !965} ; [ DW_TAG_typedef ] [ngx_http_upstream_resolved_t] [line 254, size 0, align 0, offset 0] [from ]
!965 = metadata !{i32 786451, null, metadata !"", metadata !586, i32 242, i64 288, i64 32, i32 0, i32 0, null, metadata !966, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 288, align 32, offset 0] [from ]
!966 = metadata !{metadata !967, metadata !968, metadata !969, metadata !970, metadata !971, metadata !974, metadata !975, metadata !976}
!967 = metadata !{i32 786445, metadata !965, metadata !"host", metadata !586, i32 243, i64 64, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [host] [line 243, size 64, align 32, offset 0] [from ngx_str_t]
!968 = metadata !{i32 786445, metadata !965, metadata !"port", metadata !586, i32 244, i64 16, i64 16, i64 64, i32 0, metadata !861} ; [ DW_TAG_member ] [port] [line 244, size 16, align 16, offset 64] [from in_port_t]
!969 = metadata !{i32 786445, metadata !965, metadata !"no_port", metadata !586, i32 245, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [no_port] [line 245, size 32, align 32, offset 96] [from ngx_uint_t]
!970 = metadata !{i32 786445, metadata !965, metadata !"naddrs", metadata !586, i32 247, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [naddrs] [line 247, size 32, align 32, offset 128] [from ngx_uint_t]
!971 = metadata !{i32 786445, metadata !965, metadata !"addrs", metadata !586, i32 248, i64 32, i64 32, i64 160, i32 0, metadata !972} ; [ DW_TAG_member ] [addrs] [line 248, size 32, align 32, offset 160] [from ]
!972 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !973} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from in_addr_t]
!973 = metadata !{i32 786454, null, metadata !"in_addr_t", metadata !586, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_typedef ] [in_addr_t] [line 141, size 0, align 0, offset 0] [from uint32_t]
!974 = metadata !{i32 786445, metadata !965, metadata !"sockaddr", metadata !586, i32 250, i64 32, i64 32, i64 192, i32 0, metadata !250} ; [ DW_TAG_member ] [sockaddr] [line 250, size 32, align 32, offset 192] [from ]
!975 = metadata !{i32 786445, metadata !965, metadata !"socklen", metadata !586, i32 251, i64 32, i64 32, i64 224, i32 0, metadata !261} ; [ DW_TAG_member ] [socklen] [line 251, size 32, align 32, offset 224] [from socklen_t]
!976 = metadata !{i32 786445, metadata !965, metadata !"ctx", metadata !586, i32 253, i64 32, i64 32, i64 256, i32 0, metadata !977} ; [ DW_TAG_member ] [ctx] [line 253, size 32, align 32, offset 256] [from ]
!977 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !978} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!978 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !586, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !979} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!979 = metadata !{i32 786451, null, metadata !"ngx_resolver_ctx_s", metadata !980, i32 111, i64 544, i64 32, i32 0, i32 0, null, metadata !981, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_resolver_ctx_s] [line 111, size 544, align 32, offset 0] [from ]
!980 = metadata !{i32 786473, metadata !"src/core/ngx_resolver.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!981 = metadata !{metadata !982, metadata !985, metadata !1008, metadata !1018, metadata !1019, metadata !1020, metadata !1021, metadata !1022, metadata !1023, metadata !1024, metadata !1025, metadata !1030, metadata !1031, metadata !1032, metadata !1033, metadata !1034}
!982 = metadata !{i32 786445, metadata !979, metadata !"next", metadata !980, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !983} ; [ DW_TAG_member ] [next] [line 112, size 32, align 32, offset 0] [from ]
!983 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !984} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!984 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !980, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !979} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!985 = metadata !{i32 786445, metadata !979, metadata !"resolver", metadata !980, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !986} ; [ DW_TAG_member ] [resolver] [line 113, size 32, align 32, offset 32] [from ]
!986 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !987} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_t]
!987 = metadata !{i32 786454, null, metadata !"ngx_resolver_t", metadata !980, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !988} ; [ DW_TAG_typedef ] [ngx_resolver_t] [line 108, size 0, align 0, offset 0] [from ]
!988 = metadata !{i32 786451, null, metadata !"", metadata !980, i32 78, i64 1216, i64 32, i32 0, i32 0, null, metadata !989, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 78, size 1216, align 32, offset 0] [from ]
!989 = metadata !{metadata !990, metadata !991, metadata !992, metadata !993, metadata !994, metadata !995, metadata !996, metadata !997, metadata !998, metadata !999, metadata !1000, metadata !1001, metadata !1002, metadata !1003, metadata !1004, metadata !1005, metadata !1006, metadata !1007}
!990 = metadata !{i32 786445, metadata !988, metadata !"event", metadata !980, i32 80, i64 32, i64 32, i64 0, i32 0, metadata !29} ; [ DW_TAG_member ] [event] [line 80, size 32, align 32, offset 0] [from ]
!991 = metadata !{i32 786445, metadata !988, metadata !"dummy", metadata !980, i32 81, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [dummy] [line 81, size 32, align 32, offset 32] [from ]
!992 = metadata !{i32 786445, metadata !988, metadata !"log", metadata !980, i32 82, i64 32, i64 32, i64 64, i32 0, metadata !65} ; [ DW_TAG_member ] [log] [line 82, size 32, align 32, offset 64] [from ]
!993 = metadata !{i32 786445, metadata !988, metadata !"ident", metadata !980, i32 85, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [ident] [line 85, size 32, align 32, offset 96] [from ngx_int_t]
!994 = metadata !{i32 786445, metadata !988, metadata !"udp_connections", metadata !980, i32 88, i64 160, i64 32, i64 128, i32 0, metadata !392} ; [ DW_TAG_member ] [udp_connections] [line 88, size 160, align 32, offset 128] [from ngx_array_t]
!995 = metadata !{i32 786445, metadata !988, metadata !"last_connection", metadata !980, i32 89, i64 32, i64 32, i64 288, i32 0, metadata !62} ; [ DW_TAG_member ] [last_connection] [line 89, size 32, align 32, offset 288] [from ngx_uint_t]
!996 = metadata !{i32 786445, metadata !988, metadata !"name_rbtree", metadata !980, i32 91, i64 96, i64 32, i64 320, i32 0, metadata !432} ; [ DW_TAG_member ] [name_rbtree] [line 91, size 96, align 32, offset 320] [from ngx_rbtree_t]
!997 = metadata !{i32 786445, metadata !988, metadata !"name_sentinel", metadata !980, i32 92, i64 160, i64 32, i64 416, i32 0, metadata !109} ; [ DW_TAG_member ] [name_sentinel] [line 92, size 160, align 32, offset 416] [from ngx_rbtree_node_t]
!998 = metadata !{i32 786445, metadata !988, metadata !"addr_rbtree", metadata !980, i32 94, i64 96, i64 32, i64 576, i32 0, metadata !432} ; [ DW_TAG_member ] [addr_rbtree] [line 94, size 96, align 32, offset 576] [from ngx_rbtree_t]
!999 = metadata !{i32 786445, metadata !988, metadata !"addr_sentinel", metadata !980, i32 95, i64 160, i64 32, i64 672, i32 0, metadata !109} ; [ DW_TAG_member ] [addr_sentinel] [line 95, size 160, align 32, offset 672] [from ngx_rbtree_node_t]
!1000 = metadata !{i32 786445, metadata !988, metadata !"name_resend_queue", metadata !980, i32 97, i64 64, i64 32, i64 832, i32 0, metadata !347} ; [ DW_TAG_member ] [name_resend_queue] [line 97, size 64, align 32, offset 832] [from ngx_queue_t]
!1001 = metadata !{i32 786445, metadata !988, metadata !"addr_resend_queue", metadata !980, i32 98, i64 64, i64 32, i64 896, i32 0, metadata !347} ; [ DW_TAG_member ] [addr_resend_queue] [line 98, size 64, align 32, offset 896] [from ngx_queue_t]
!1002 = metadata !{i32 786445, metadata !988, metadata !"name_expire_queue", metadata !980, i32 100, i64 64, i64 32, i64 960, i32 0, metadata !347} ; [ DW_TAG_member ] [name_expire_queue] [line 100, size 64, align 32, offset 960] [from ngx_queue_t]
!1003 = metadata !{i32 786445, metadata !988, metadata !"addr_expire_queue", metadata !980, i32 101, i64 64, i64 32, i64 1024, i32 0, metadata !347} ; [ DW_TAG_member ] [addr_expire_queue] [line 101, size 64, align 32, offset 1024] [from ngx_queue_t]
!1004 = metadata !{i32 786445, metadata !988, metadata !"resend_timeout", metadata !980, i32 103, i64 32, i64 32, i64 1088, i32 0, metadata !410} ; [ DW_TAG_member ] [resend_timeout] [line 103, size 32, align 32, offset 1088] [from time_t]
!1005 = metadata !{i32 786445, metadata !988, metadata !"expire", metadata !980, i32 104, i64 32, i64 32, i64 1120, i32 0, metadata !410} ; [ DW_TAG_member ] [expire] [line 104, size 32, align 32, offset 1120] [from time_t]
!1006 = metadata !{i32 786445, metadata !988, metadata !"valid", metadata !980, i32 105, i64 32, i64 32, i64 1152, i32 0, metadata !410} ; [ DW_TAG_member ] [valid] [line 105, size 32, align 32, offset 1152] [from time_t]
!1007 = metadata !{i32 786445, metadata !988, metadata !"log_level", metadata !980, i32 107, i64 32, i64 32, i64 1184, i32 0, metadata !62} ; [ DW_TAG_member ] [log_level] [line 107, size 32, align 32, offset 1184] [from ngx_uint_t]
!1008 = metadata !{i32 786445, metadata !979, metadata !"udp_connection", metadata !980, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !1009} ; [ DW_TAG_member ] [udp_connection] [line 114, size 32, align 32, offset 64] [from ]
!1009 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1010} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_udp_connection_t]
!1010 = metadata !{i32 786454, null, metadata !"ngx_udp_connection_t", metadata !980, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !1011} ; [ DW_TAG_typedef ] [ngx_udp_connection_t] [line 42, size 0, align 0, offset 0] [from ]
!1011 = metadata !{i32 786451, null, metadata !"", metadata !980, i32 36, i64 352, i64 32, i32 0, i32 0, null, metadata !1012, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 36, size 352, align 32, offset 0] [from ]
!1012 = metadata !{metadata !1013, metadata !1014, metadata !1015, metadata !1016, metadata !1017}
!1013 = metadata !{i32 786445, metadata !1011, metadata !"connection", metadata !980, i32 37, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [connection] [line 37, size 32, align 32, offset 0] [from ]
!1014 = metadata !{i32 786445, metadata !1011, metadata !"sockaddr", metadata !980, i32 38, i64 32, i64 32, i64 32, i32 0, metadata !250} ; [ DW_TAG_member ] [sockaddr] [line 38, size 32, align 32, offset 32] [from ]
!1015 = metadata !{i32 786445, metadata !1011, metadata !"socklen", metadata !980, i32 39, i64 32, i64 32, i64 64, i32 0, metadata !261} ; [ DW_TAG_member ] [socklen] [line 39, size 32, align 32, offset 64] [from socklen_t]
!1016 = metadata !{i32 786445, metadata !1011, metadata !"server", metadata !980, i32 40, i64 64, i64 32, i64 96, i32 0, metadata !80} ; [ DW_TAG_member ] [server] [line 40, size 64, align 32, offset 96] [from ngx_str_t]
!1017 = metadata !{i32 786445, metadata !1011, metadata !"log", metadata !980, i32 41, i64 192, i64 32, i64 160, i32 0, metadata !66} ; [ DW_TAG_member ] [log] [line 41, size 192, align 32, offset 160] [from ngx_log_t]
!1018 = metadata !{i32 786445, metadata !979, metadata !"ident", metadata !980, i32 117, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [ident] [line 117, size 32, align 32, offset 96] [from ngx_int_t]
!1019 = metadata !{i32 786445, metadata !979, metadata !"state", metadata !980, i32 119, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [state] [line 119, size 32, align 32, offset 128] [from ngx_int_t]
!1020 = metadata !{i32 786445, metadata !979, metadata !"type", metadata !980, i32 120, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 120, size 32, align 32, offset 160] [from ngx_int_t]
!1021 = metadata !{i32 786445, metadata !979, metadata !"name", metadata !980, i32 121, i64 64, i64 32, i64 192, i32 0, metadata !80} ; [ DW_TAG_member ] [name] [line 121, size 64, align 32, offset 192] [from ngx_str_t]
!1022 = metadata !{i32 786445, metadata !979, metadata !"naddrs", metadata !980, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !62} ; [ DW_TAG_member ] [naddrs] [line 123, size 32, align 32, offset 256] [from ngx_uint_t]
!1023 = metadata !{i32 786445, metadata !979, metadata !"addrs", metadata !980, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !972} ; [ DW_TAG_member ] [addrs] [line 124, size 32, align 32, offset 288] [from ]
!1024 = metadata !{i32 786445, metadata !979, metadata !"addr", metadata !980, i32 125, i64 32, i64 32, i64 320, i32 0, metadata !973} ; [ DW_TAG_member ] [addr] [line 125, size 32, align 32, offset 320] [from in_addr_t]
!1025 = metadata !{i32 786445, metadata !979, metadata !"handler", metadata !980, i32 127, i64 32, i64 32, i64 352, i32 0, metadata !1026} ; [ DW_TAG_member ] [handler] [line 127, size 32, align 32, offset 352] [from ngx_resolver_handler_pt]
!1026 = metadata !{i32 786454, null, metadata !"ngx_resolver_handler_pt", metadata !980, i32 47, i64 0, i64 0, i64 0, i32 0, metadata !1027} ; [ DW_TAG_typedef ] [ngx_resolver_handler_pt] [line 47, size 0, align 0, offset 0] [from ]
!1027 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1028} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1028 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1029, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1029 = metadata !{null, metadata !983}
!1030 = metadata !{i32 786445, metadata !979, metadata !"data", metadata !980, i32 128, i64 32, i64 32, i64 384, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 128, size 32, align 32, offset 384] [from ]
!1031 = metadata !{i32 786445, metadata !979, metadata !"timeout", metadata !980, i32 129, i64 32, i64 32, i64 416, i32 0, metadata !283} ; [ DW_TAG_member ] [timeout] [line 129, size 32, align 32, offset 416] [from ngx_msec_t]
!1032 = metadata !{i32 786445, metadata !979, metadata !"quick", metadata !980, i32 131, i64 32, i64 32, i64 448, i32 0, metadata !62} ; [ DW_TAG_member ] [quick] [line 131, size 32, align 32, offset 448] [from ngx_uint_t]
!1033 = metadata !{i32 786445, metadata !979, metadata !"recursion", metadata !980, i32 132, i64 32, i64 32, i64 480, i32 0, metadata !62} ; [ DW_TAG_member ] [recursion] [line 132, size 32, align 32, offset 480] [from ngx_uint_t]
!1034 = metadata !{i32 786445, metadata !979, metadata !"event", metadata !980, i32 133, i64 32, i64 32, i64 512, i32 0, metadata !29} ; [ DW_TAG_member ] [event] [line 133, size 32, align 32, offset 512] [from ]
!1035 = metadata !{i32 786445, metadata !585, metadata !"buffer", metadata !586, i32 280, i64 416, i64 32, i64 2336, i32 0, metadata !154} ; [ DW_TAG_member ] [buffer] [line 280, size 416, align 32, offset 2336] [from ngx_buf_t]
!1036 = metadata !{i32 786445, metadata !585, metadata !"length", metadata !586, i32 281, i64 64, i64 32, i64 2752, i32 0, metadata !160} ; [ DW_TAG_member ] [length] [line 281, size 64, align 32, offset 2752] [from off_t]
!1037 = metadata !{i32 786445, metadata !585, metadata !"out_bufs", metadata !586, i32 283, i64 32, i64 32, i64 2816, i32 0, metadata !147} ; [ DW_TAG_member ] [out_bufs] [line 283, size 32, align 32, offset 2816] [from ]
!1038 = metadata !{i32 786445, metadata !585, metadata !"busy_bufs", metadata !586, i32 284, i64 32, i64 32, i64 2848, i32 0, metadata !147} ; [ DW_TAG_member ] [busy_bufs] [line 284, size 32, align 32, offset 2848] [from ]
!1039 = metadata !{i32 786445, metadata !585, metadata !"free_bufs", metadata !586, i32 285, i64 32, i64 32, i64 2880, i32 0, metadata !147} ; [ DW_TAG_member ] [free_bufs] [line 285, size 32, align 32, offset 2880] [from ]
!1040 = metadata !{i32 786445, metadata !585, metadata !"input_filter_init", metadata !586, i32 287, i64 32, i64 32, i64 2912, i32 0, metadata !1041} ; [ DW_TAG_member ] [input_filter_init] [line 287, size 32, align 32, offset 2912] [from ]
!1041 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1042} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1042 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1043, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1043 = metadata !{metadata !8, metadata !27}
!1044 = metadata !{i32 786445, metadata !585, metadata !"input_filter", metadata !586, i32 288, i64 32, i64 32, i64 2944, i32 0, metadata !1045} ; [ DW_TAG_member ] [input_filter] [line 288, size 32, align 32, offset 2944] [from ]
!1045 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1046} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1046 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1047, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1047 = metadata !{metadata !8, metadata !27, metadata !136}
!1048 = metadata !{i32 786445, metadata !585, metadata !"input_filter_ctx", metadata !586, i32 289, i64 32, i64 32, i64 2976, i32 0, metadata !27} ; [ DW_TAG_member ] [input_filter_ctx] [line 289, size 32, align 32, offset 2976] [from ]
!1049 = metadata !{i32 786445, metadata !585, metadata !"create_key", metadata !586, i32 292, i64 32, i64 32, i64 3008, i32 0, metadata !1050} ; [ DW_TAG_member ] [create_key] [line 292, size 32, align 32, offset 3008] [from ]
!1050 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1051} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1051 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1052, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1052 = metadata !{metadata !8, metadata !381}
!1053 = metadata !{i32 786445, metadata !585, metadata !"create_request", metadata !586, i32 294, i64 32, i64 32, i64 3040, i32 0, metadata !1050} ; [ DW_TAG_member ] [create_request] [line 294, size 32, align 32, offset 3040] [from ]
!1054 = metadata !{i32 786445, metadata !585, metadata !"reinit_request", metadata !586, i32 295, i64 32, i64 32, i64 3072, i32 0, metadata !1050} ; [ DW_TAG_member ] [reinit_request] [line 295, size 32, align 32, offset 3072] [from ]
!1055 = metadata !{i32 786445, metadata !585, metadata !"process_header", metadata !586, i32 296, i64 32, i64 32, i64 3104, i32 0, metadata !1050} ; [ DW_TAG_member ] [process_header] [line 296, size 32, align 32, offset 3104] [from ]
!1056 = metadata !{i32 786445, metadata !585, metadata !"abort_request", metadata !586, i32 297, i64 32, i64 32, i64 3136, i32 0, metadata !378} ; [ DW_TAG_member ] [abort_request] [line 297, size 32, align 32, offset 3136] [from ]
!1057 = metadata !{i32 786445, metadata !585, metadata !"finalize_request", metadata !586, i32 298, i64 32, i64 32, i64 3168, i32 0, metadata !1058} ; [ DW_TAG_member ] [finalize_request] [line 298, size 32, align 32, offset 3168] [from ]
!1058 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1059} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1059 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1060, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1060 = metadata !{null, metadata !381, metadata !8}
!1061 = metadata !{i32 786445, metadata !585, metadata !"rewrite_redirect", metadata !586, i32 300, i64 32, i64 32, i64 3200, i32 0, metadata !1062} ; [ DW_TAG_member ] [rewrite_redirect] [line 300, size 32, align 32, offset 3200] [from ]
!1062 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1063} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1063 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1064, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1064 = metadata !{metadata !8, metadata !381, metadata !934, metadata !85}
!1065 = metadata !{i32 786445, metadata !585, metadata !"rewrite_cookie", metadata !586, i32 302, i64 32, i64 32, i64 3232, i32 0, metadata !1066} ; [ DW_TAG_member ] [rewrite_cookie] [line 302, size 32, align 32, offset 3232] [from ]
!1066 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1067} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1067 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1068, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1068 = metadata !{metadata !8, metadata !381, metadata !934}
!1069 = metadata !{i32 786445, metadata !585, metadata !"timeout", metadata !586, i32 305, i64 32, i64 32, i64 3264, i32 0, metadata !283} ; [ DW_TAG_member ] [timeout] [line 305, size 32, align 32, offset 3264] [from ngx_msec_t]
!1070 = metadata !{i32 786445, metadata !585, metadata !"state", metadata !586, i32 307, i64 32, i64 32, i64 3296, i32 0, metadata !1071} ; [ DW_TAG_member ] [state] [line 307, size 32, align 32, offset 3296] [from ]
!1071 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1072} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_state_t]
!1072 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_state_t", metadata !586, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !1073} ; [ DW_TAG_typedef ] [ngx_http_upstream_state_t] [line 63, size 0, align 0, offset 0] [from ]
!1073 = metadata !{i32 786451, null, metadata !"", metadata !586, i32 53, i64 256, i64 32, i32 0, i32 0, null, metadata !1074, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 53, size 256, align 32, offset 0] [from ]
!1074 = metadata !{metadata !1075, metadata !1076, metadata !1077, metadata !1078, metadata !1079, metadata !1080, metadata !1081}
!1075 = metadata !{i32 786445, metadata !1073, metadata !"bl_time", metadata !586, i32 54, i64 32, i64 32, i64 0, i32 0, metadata !283} ; [ DW_TAG_member ] [bl_time] [line 54, size 32, align 32, offset 0] [from ngx_msec_t]
!1076 = metadata !{i32 786445, metadata !1073, metadata !"bl_state", metadata !586, i32 55, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [bl_state] [line 55, size 32, align 32, offset 32] [from ngx_uint_t]
!1077 = metadata !{i32 786445, metadata !1073, metadata !"status", metadata !586, i32 57, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [status] [line 57, size 32, align 32, offset 64] [from ngx_uint_t]
!1078 = metadata !{i32 786445, metadata !1073, metadata !"response_sec", metadata !586, i32 58, i64 32, i64 32, i64 96, i32 0, metadata !410} ; [ DW_TAG_member ] [response_sec] [line 58, size 32, align 32, offset 96] [from time_t]
!1079 = metadata !{i32 786445, metadata !1073, metadata !"response_msec", metadata !586, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [response_msec] [line 59, size 32, align 32, offset 128] [from ngx_uint_t]
!1080 = metadata !{i32 786445, metadata !1073, metadata !"response_length", metadata !586, i32 60, i64 64, i64 32, i64 160, i32 0, metadata !160} ; [ DW_TAG_member ] [response_length] [line 60, size 64, align 32, offset 160] [from off_t]
!1081 = metadata !{i32 786445, metadata !1073, metadata !"peer", metadata !586, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !605} ; [ DW_TAG_member ] [peer] [line 62, size 32, align 32, offset 224] [from ]
!1082 = metadata !{i32 786445, metadata !585, metadata !"method", metadata !586, i32 309, i64 64, i64 32, i64 3328, i32 0, metadata !80} ; [ DW_TAG_member ] [method] [line 309, size 64, align 32, offset 3328] [from ngx_str_t]
!1083 = metadata !{i32 786445, metadata !585, metadata !"schema", metadata !586, i32 310, i64 64, i64 32, i64 3392, i32 0, metadata !80} ; [ DW_TAG_member ] [schema] [line 310, size 64, align 32, offset 3392] [from ngx_str_t]
!1084 = metadata !{i32 786445, metadata !585, metadata !"uri", metadata !586, i32 311, i64 64, i64 32, i64 3456, i32 0, metadata !80} ; [ DW_TAG_member ] [uri] [line 311, size 64, align 32, offset 3456] [from ngx_str_t]
!1085 = metadata !{i32 786445, metadata !585, metadata !"cleanup", metadata !586, i32 313, i64 32, i64 32, i64 3520, i32 0, metadata !1086} ; [ DW_TAG_member ] [cleanup] [line 313, size 32, align 32, offset 3520] [from ]
!1086 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1087} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1087 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_pt", metadata !586, i32 313, i64 0, i64 0, i64 0, i32 0, metadata !335} ; [ DW_TAG_typedef ] [ngx_http_cleanup_pt] [line 313, size 0, align 0, offset 0] [from ]
!1088 = metadata !{i32 786445, metadata !585, metadata !"store", metadata !586, i32 315, i64 1, i64 32, i64 3552, i32 0, metadata !19} ; [ DW_TAG_member ] [store] [line 315, size 1, align 32, offset 3552] [from unsigned int]
!1089 = metadata !{i32 786445, metadata !585, metadata !"cacheable", metadata !586, i32 316, i64 1, i64 32, i64 3553, i32 0, metadata !19} ; [ DW_TAG_member ] [cacheable] [line 316, size 1, align 32, offset 3553] [from unsigned int]
!1090 = metadata !{i32 786445, metadata !585, metadata !"accel", metadata !586, i32 317, i64 1, i64 32, i64 3554, i32 0, metadata !19} ; [ DW_TAG_member ] [accel] [line 317, size 1, align 32, offset 3554] [from unsigned int]
!1091 = metadata !{i32 786445, metadata !585, metadata !"ssl", metadata !586, i32 318, i64 1, i64 32, i64 3555, i32 0, metadata !19} ; [ DW_TAG_member ] [ssl] [line 318, size 1, align 32, offset 3555] [from unsigned int]
!1092 = metadata !{i32 786445, metadata !585, metadata !"cache_status", metadata !586, i32 320, i64 3, i64 32, i64 3556, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_status] [line 320, size 3, align 32, offset 3556] [from unsigned int]
!1093 = metadata !{i32 786445, metadata !585, metadata !"buffering", metadata !586, i32 323, i64 1, i64 32, i64 3559, i32 0, metadata !19} ; [ DW_TAG_member ] [buffering] [line 323, size 1, align 32, offset 3559] [from unsigned int]
!1094 = metadata !{i32 786445, metadata !585, metadata !"keepalive", metadata !586, i32 324, i64 1, i64 32, i64 3560, i32 0, metadata !19} ; [ DW_TAG_member ] [keepalive] [line 324, size 1, align 32, offset 3560] [from unsigned int]
!1095 = metadata !{i32 786445, metadata !585, metadata !"request_sent", metadata !586, i32 326, i64 1, i64 32, i64 3561, i32 0, metadata !19} ; [ DW_TAG_member ] [request_sent] [line 326, size 1, align 32, offset 3561] [from unsigned int]
!1096 = metadata !{i32 786445, metadata !585, metadata !"header_sent", metadata !586, i32 327, i64 1, i64 32, i64 3562, i32 0, metadata !19} ; [ DW_TAG_member ] [header_sent] [line 327, size 1, align 32, offset 3562] [from unsigned int]
!1097 = metadata !{i32 786445, metadata !14, metadata !"upstream_states", metadata !15, i32 372, i64 32, i64 32, i64 320, i32 0, metadata !765} ; [ DW_TAG_member ] [upstream_states] [line 372, size 32, align 32, offset 320] [from ]
!1098 = metadata !{i32 786445, metadata !14, metadata !"pool", metadata !15, i32 375, i64 32, i64 32, i64 352, i32 0, metadata !303} ; [ DW_TAG_member ] [pool] [line 375, size 32, align 32, offset 352] [from ]
!1099 = metadata !{i32 786445, metadata !14, metadata !"header_in", metadata !15, i32 376, i64 32, i64 32, i64 384, i32 0, metadata !153} ; [ DW_TAG_member ] [header_in] [line 376, size 32, align 32, offset 384] [from ]
!1100 = metadata !{i32 786445, metadata !14, metadata !"headers_in", metadata !15, i32 378, i64 1248, i64 32, i64 416, i32 0, metadata !1101} ; [ DW_TAG_member ] [headers_in] [line 378, size 1248, align 32, offset 416] [from ngx_http_headers_in_t]
!1101 = metadata !{i32 786454, null, metadata !"ngx_http_headers_in_t", metadata !15, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1102} ; [ DW_TAG_typedef ] [ngx_http_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1102 = metadata !{i32 786451, null, metadata !"", metadata !15, i32 175, i64 1248, i64 32, i32 0, i32 0, null, metadata !1103, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 175, size 1248, align 32, offset 0] [from ]
!1103 = metadata !{metadata !1104, metadata !1105, metadata !1106, metadata !1107, metadata !1108, metadata !1109, metadata !1110, metadata !1111, metadata !1112, metadata !1113, metadata !1114, metadata !1115, metadata !1116, metadata !1117, metadata !1118, metadata !1119, metadata !1120, metadata !1121, metadata !1122, metadata !1123, metadata !1124, metadata !1125, metadata !1126, metadata !1127, metadata !1128, metadata !1129, metadata !1130, metadata !1131, metadata !1132, metadata !1133, metadata !1134, metadata !1135}
!1104 = metadata !{i32 786445, metadata !1102, metadata !"headers", metadata !15, i32 176, i64 224, i64 32, i64 0, i32 0, metadata !785} ; [ DW_TAG_member ] [headers] [line 176, size 224, align 32, offset 0] [from ngx_list_t]
!1105 = metadata !{i32 786445, metadata !1102, metadata !"host", metadata !15, i32 178, i64 32, i64 32, i64 224, i32 0, metadata !934} ; [ DW_TAG_member ] [host] [line 178, size 32, align 32, offset 224] [from ]
!1106 = metadata !{i32 786445, metadata !1102, metadata !"connection", metadata !15, i32 179, i64 32, i64 32, i64 256, i32 0, metadata !934} ; [ DW_TAG_member ] [connection] [line 179, size 32, align 32, offset 256] [from ]
!1107 = metadata !{i32 786445, metadata !1102, metadata !"if_modified_since", metadata !15, i32 180, i64 32, i64 32, i64 288, i32 0, metadata !934} ; [ DW_TAG_member ] [if_modified_since] [line 180, size 32, align 32, offset 288] [from ]
!1108 = metadata !{i32 786445, metadata !1102, metadata !"if_unmodified_since", metadata !15, i32 181, i64 32, i64 32, i64 320, i32 0, metadata !934} ; [ DW_TAG_member ] [if_unmodified_since] [line 181, size 32, align 32, offset 320] [from ]
!1109 = metadata !{i32 786445, metadata !1102, metadata !"user_agent", metadata !15, i32 182, i64 32, i64 32, i64 352, i32 0, metadata !934} ; [ DW_TAG_member ] [user_agent] [line 182, size 32, align 32, offset 352] [from ]
!1110 = metadata !{i32 786445, metadata !1102, metadata !"referer", metadata !15, i32 183, i64 32, i64 32, i64 384, i32 0, metadata !934} ; [ DW_TAG_member ] [referer] [line 183, size 32, align 32, offset 384] [from ]
!1111 = metadata !{i32 786445, metadata !1102, metadata !"content_length", metadata !15, i32 184, i64 32, i64 32, i64 416, i32 0, metadata !934} ; [ DW_TAG_member ] [content_length] [line 184, size 32, align 32, offset 416] [from ]
!1112 = metadata !{i32 786445, metadata !1102, metadata !"content_type", metadata !15, i32 185, i64 32, i64 32, i64 448, i32 0, metadata !934} ; [ DW_TAG_member ] [content_type] [line 185, size 32, align 32, offset 448] [from ]
!1113 = metadata !{i32 786445, metadata !1102, metadata !"range", metadata !15, i32 187, i64 32, i64 32, i64 480, i32 0, metadata !934} ; [ DW_TAG_member ] [range] [line 187, size 32, align 32, offset 480] [from ]
!1114 = metadata !{i32 786445, metadata !1102, metadata !"if_range", metadata !15, i32 188, i64 32, i64 32, i64 512, i32 0, metadata !934} ; [ DW_TAG_member ] [if_range] [line 188, size 32, align 32, offset 512] [from ]
!1115 = metadata !{i32 786445, metadata !1102, metadata !"transfer_encoding", metadata !15, i32 190, i64 32, i64 32, i64 544, i32 0, metadata !934} ; [ DW_TAG_member ] [transfer_encoding] [line 190, size 32, align 32, offset 544] [from ]
!1116 = metadata !{i32 786445, metadata !1102, metadata !"expect", metadata !15, i32 191, i64 32, i64 32, i64 576, i32 0, metadata !934} ; [ DW_TAG_member ] [expect] [line 191, size 32, align 32, offset 576] [from ]
!1117 = metadata !{i32 786445, metadata !1102, metadata !"accept_encoding", metadata !15, i32 194, i64 32, i64 32, i64 608, i32 0, metadata !934} ; [ DW_TAG_member ] [accept_encoding] [line 194, size 32, align 32, offset 608] [from ]
!1118 = metadata !{i32 786445, metadata !1102, metadata !"via", metadata !15, i32 195, i64 32, i64 32, i64 640, i32 0, metadata !934} ; [ DW_TAG_member ] [via] [line 195, size 32, align 32, offset 640] [from ]
!1119 = metadata !{i32 786445, metadata !1102, metadata !"authorization", metadata !15, i32 198, i64 32, i64 32, i64 672, i32 0, metadata !934} ; [ DW_TAG_member ] [authorization] [line 198, size 32, align 32, offset 672] [from ]
!1120 = metadata !{i32 786445, metadata !1102, metadata !"keep_alive", metadata !15, i32 200, i64 32, i64 32, i64 704, i32 0, metadata !934} ; [ DW_TAG_member ] [keep_alive] [line 200, size 32, align 32, offset 704] [from ]
!1121 = metadata !{i32 786445, metadata !1102, metadata !"x_forwarded_for", metadata !15, i32 203, i64 32, i64 32, i64 736, i32 0, metadata !934} ; [ DW_TAG_member ] [x_forwarded_for] [line 203, size 32, align 32, offset 736] [from ]
!1122 = metadata !{i32 786445, metadata !1102, metadata !"user", metadata !15, i32 222, i64 64, i64 32, i64 768, i32 0, metadata !80} ; [ DW_TAG_member ] [user] [line 222, size 64, align 32, offset 768] [from ngx_str_t]
!1123 = metadata !{i32 786445, metadata !1102, metadata !"passwd", metadata !15, i32 223, i64 64, i64 32, i64 832, i32 0, metadata !80} ; [ DW_TAG_member ] [passwd] [line 223, size 64, align 32, offset 832] [from ngx_str_t]
!1124 = metadata !{i32 786445, metadata !1102, metadata !"cookies", metadata !15, i32 225, i64 160, i64 32, i64 896, i32 0, metadata !392} ; [ DW_TAG_member ] [cookies] [line 225, size 160, align 32, offset 896] [from ngx_array_t]
!1125 = metadata !{i32 786445, metadata !1102, metadata !"server", metadata !15, i32 227, i64 64, i64 32, i64 1056, i32 0, metadata !80} ; [ DW_TAG_member ] [server] [line 227, size 64, align 32, offset 1056] [from ngx_str_t]
!1126 = metadata !{i32 786445, metadata !1102, metadata !"content_length_n", metadata !15, i32 228, i64 64, i64 32, i64 1120, i32 0, metadata !160} ; [ DW_TAG_member ] [content_length_n] [line 228, size 64, align 32, offset 1120] [from off_t]
!1127 = metadata !{i32 786445, metadata !1102, metadata !"keep_alive_n", metadata !15, i32 229, i64 32, i64 32, i64 1184, i32 0, metadata !410} ; [ DW_TAG_member ] [keep_alive_n] [line 229, size 32, align 32, offset 1184] [from time_t]
!1128 = metadata !{i32 786445, metadata !1102, metadata !"connection_type", metadata !15, i32 231, i64 2, i64 32, i64 1216, i32 0, metadata !19} ; [ DW_TAG_member ] [connection_type] [line 231, size 2, align 32, offset 1216] [from unsigned int]
!1129 = metadata !{i32 786445, metadata !1102, metadata !"msie", metadata !15, i32 232, i64 1, i64 32, i64 1218, i32 0, metadata !19} ; [ DW_TAG_member ] [msie] [line 232, size 1, align 32, offset 1218] [from unsigned int]
!1130 = metadata !{i32 786445, metadata !1102, metadata !"msie6", metadata !15, i32 233, i64 1, i64 32, i64 1219, i32 0, metadata !19} ; [ DW_TAG_member ] [msie6] [line 233, size 1, align 32, offset 1219] [from unsigned int]
!1131 = metadata !{i32 786445, metadata !1102, metadata !"opera", metadata !15, i32 234, i64 1, i64 32, i64 1220, i32 0, metadata !19} ; [ DW_TAG_member ] [opera] [line 234, size 1, align 32, offset 1220] [from unsigned int]
!1132 = metadata !{i32 786445, metadata !1102, metadata !"gecko", metadata !15, i32 235, i64 1, i64 32, i64 1221, i32 0, metadata !19} ; [ DW_TAG_member ] [gecko] [line 235, size 1, align 32, offset 1221] [from unsigned int]
!1133 = metadata !{i32 786445, metadata !1102, metadata !"chrome", metadata !15, i32 236, i64 1, i64 32, i64 1222, i32 0, metadata !19} ; [ DW_TAG_member ] [chrome] [line 236, size 1, align 32, offset 1222] [from unsigned int]
!1134 = metadata !{i32 786445, metadata !1102, metadata !"safari", metadata !15, i32 237, i64 1, i64 32, i64 1223, i32 0, metadata !19} ; [ DW_TAG_member ] [safari] [line 237, size 1, align 32, offset 1223] [from unsigned int]
!1135 = metadata !{i32 786445, metadata !1102, metadata !"konqueror", metadata !15, i32 238, i64 1, i64 32, i64 1224, i32 0, metadata !19} ; [ DW_TAG_member ] [konqueror] [line 238, size 1, align 32, offset 1224] [from unsigned int]
!1136 = metadata !{i32 786445, metadata !14, metadata !"headers_out", metadata !15, i32 379, i64 1248, i64 32, i64 1664, i32 0, metadata !1137} ; [ DW_TAG_member ] [headers_out] [line 379, size 1248, align 32, offset 1664] [from ngx_http_headers_out_t]
!1137 = metadata !{i32 786454, null, metadata !"ngx_http_headers_out_t", metadata !15, i32 274, i64 0, i64 0, i64 0, i32 0, metadata !1138} ; [ DW_TAG_typedef ] [ngx_http_headers_out_t] [line 274, size 0, align 0, offset 0] [from ]
!1138 = metadata !{i32 786451, null, metadata !"", metadata !15, i32 242, i64 1248, i64 32, i32 0, i32 0, null, metadata !1139, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 1248, align 32, offset 0] [from ]
!1139 = metadata !{metadata !1140, metadata !1141, metadata !1142, metadata !1143, metadata !1144, metadata !1145, metadata !1146, metadata !1147, metadata !1148, metadata !1149, metadata !1150, metadata !1151, metadata !1152, metadata !1153, metadata !1154, metadata !1155, metadata !1156, metadata !1157, metadata !1158, metadata !1159, metadata !1160, metadata !1161, metadata !1162, metadata !1163, metadata !1164}
!1140 = metadata !{i32 786445, metadata !1138, metadata !"headers", metadata !15, i32 243, i64 224, i64 32, i64 0, i32 0, metadata !785} ; [ DW_TAG_member ] [headers] [line 243, size 224, align 32, offset 0] [from ngx_list_t]
!1141 = metadata !{i32 786445, metadata !1138, metadata !"status", metadata !15, i32 245, i64 32, i64 32, i64 224, i32 0, metadata !62} ; [ DW_TAG_member ] [status] [line 245, size 32, align 32, offset 224] [from ngx_uint_t]
!1142 = metadata !{i32 786445, metadata !1138, metadata !"status_line", metadata !15, i32 246, i64 64, i64 32, i64 256, i32 0, metadata !80} ; [ DW_TAG_member ] [status_line] [line 246, size 64, align 32, offset 256] [from ngx_str_t]
!1143 = metadata !{i32 786445, metadata !1138, metadata !"server", metadata !15, i32 248, i64 32, i64 32, i64 320, i32 0, metadata !934} ; [ DW_TAG_member ] [server] [line 248, size 32, align 32, offset 320] [from ]
!1144 = metadata !{i32 786445, metadata !1138, metadata !"date", metadata !15, i32 249, i64 32, i64 32, i64 352, i32 0, metadata !934} ; [ DW_TAG_member ] [date] [line 249, size 32, align 32, offset 352] [from ]
!1145 = metadata !{i32 786445, metadata !1138, metadata !"content_length", metadata !15, i32 250, i64 32, i64 32, i64 384, i32 0, metadata !934} ; [ DW_TAG_member ] [content_length] [line 250, size 32, align 32, offset 384] [from ]
!1146 = metadata !{i32 786445, metadata !1138, metadata !"content_encoding", metadata !15, i32 251, i64 32, i64 32, i64 416, i32 0, metadata !934} ; [ DW_TAG_member ] [content_encoding] [line 251, size 32, align 32, offset 416] [from ]
!1147 = metadata !{i32 786445, metadata !1138, metadata !"location", metadata !15, i32 252, i64 32, i64 32, i64 448, i32 0, metadata !934} ; [ DW_TAG_member ] [location] [line 252, size 32, align 32, offset 448] [from ]
!1148 = metadata !{i32 786445, metadata !1138, metadata !"refresh", metadata !15, i32 253, i64 32, i64 32, i64 480, i32 0, metadata !934} ; [ DW_TAG_member ] [refresh] [line 253, size 32, align 32, offset 480] [from ]
!1149 = metadata !{i32 786445, metadata !1138, metadata !"last_modified", metadata !15, i32 254, i64 32, i64 32, i64 512, i32 0, metadata !934} ; [ DW_TAG_member ] [last_modified] [line 254, size 32, align 32, offset 512] [from ]
!1150 = metadata !{i32 786445, metadata !1138, metadata !"content_range", metadata !15, i32 255, i64 32, i64 32, i64 544, i32 0, metadata !934} ; [ DW_TAG_member ] [content_range] [line 255, size 32, align 32, offset 544] [from ]
!1151 = metadata !{i32 786445, metadata !1138, metadata !"accept_ranges", metadata !15, i32 256, i64 32, i64 32, i64 576, i32 0, metadata !934} ; [ DW_TAG_member ] [accept_ranges] [line 256, size 32, align 32, offset 576] [from ]
!1152 = metadata !{i32 786445, metadata !1138, metadata !"www_authenticate", metadata !15, i32 257, i64 32, i64 32, i64 608, i32 0, metadata !934} ; [ DW_TAG_member ] [www_authenticate] [line 257, size 32, align 32, offset 608] [from ]
!1153 = metadata !{i32 786445, metadata !1138, metadata !"expires", metadata !15, i32 258, i64 32, i64 32, i64 640, i32 0, metadata !934} ; [ DW_TAG_member ] [expires] [line 258, size 32, align 32, offset 640] [from ]
!1154 = metadata !{i32 786445, metadata !1138, metadata !"etag", metadata !15, i32 259, i64 32, i64 32, i64 672, i32 0, metadata !934} ; [ DW_TAG_member ] [etag] [line 259, size 32, align 32, offset 672] [from ]
!1155 = metadata !{i32 786445, metadata !1138, metadata !"override_charset", metadata !15, i32 261, i64 32, i64 32, i64 704, i32 0, metadata !605} ; [ DW_TAG_member ] [override_charset] [line 261, size 32, align 32, offset 704] [from ]
!1156 = metadata !{i32 786445, metadata !1138, metadata !"content_type_len", metadata !15, i32 263, i64 32, i64 32, i64 736, i32 0, metadata !85} ; [ DW_TAG_member ] [content_type_len] [line 263, size 32, align 32, offset 736] [from size_t]
!1157 = metadata !{i32 786445, metadata !1138, metadata !"content_type", metadata !15, i32 264, i64 64, i64 32, i64 768, i32 0, metadata !80} ; [ DW_TAG_member ] [content_type] [line 264, size 64, align 32, offset 768] [from ngx_str_t]
!1158 = metadata !{i32 786445, metadata !1138, metadata !"charset", metadata !15, i32 265, i64 64, i64 32, i64 832, i32 0, metadata !80} ; [ DW_TAG_member ] [charset] [line 265, size 64, align 32, offset 832] [from ngx_str_t]
!1159 = metadata !{i32 786445, metadata !1138, metadata !"content_type_lowcase", metadata !15, i32 266, i64 32, i64 32, i64 896, i32 0, metadata !87} ; [ DW_TAG_member ] [content_type_lowcase] [line 266, size 32, align 32, offset 896] [from ]
!1160 = metadata !{i32 786445, metadata !1138, metadata !"content_type_hash", metadata !15, i32 267, i64 32, i64 32, i64 928, i32 0, metadata !62} ; [ DW_TAG_member ] [content_type_hash] [line 267, size 32, align 32, offset 928] [from ngx_uint_t]
!1161 = metadata !{i32 786445, metadata !1138, metadata !"cache_control", metadata !15, i32 269, i64 160, i64 32, i64 960, i32 0, metadata !392} ; [ DW_TAG_member ] [cache_control] [line 269, size 160, align 32, offset 960] [from ngx_array_t]
!1162 = metadata !{i32 786445, metadata !1138, metadata !"content_length_n", metadata !15, i32 271, i64 64, i64 32, i64 1120, i32 0, metadata !160} ; [ DW_TAG_member ] [content_length_n] [line 271, size 64, align 32, offset 1120] [from off_t]
!1163 = metadata !{i32 786445, metadata !1138, metadata !"date_time", metadata !15, i32 272, i64 32, i64 32, i64 1184, i32 0, metadata !410} ; [ DW_TAG_member ] [date_time] [line 272, size 32, align 32, offset 1184] [from time_t]
!1164 = metadata !{i32 786445, metadata !1138, metadata !"last_modified_time", metadata !15, i32 273, i64 32, i64 32, i64 1216, i32 0, metadata !410} ; [ DW_TAG_member ] [last_modified_time] [line 273, size 32, align 32, offset 1216] [from time_t]
!1165 = metadata !{i32 786445, metadata !14, metadata !"request_body", metadata !15, i32 381, i64 32, i64 32, i64 2912, i32 0, metadata !1166} ; [ DW_TAG_member ] [request_body] [line 381, size 32, align 32, offset 2912] [from ]
!1166 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1167} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_body_t]
!1167 = metadata !{i32 786454, null, metadata !"ngx_http_request_body_t", metadata !15, i32 286, i64 0, i64 0, i64 0, i32 0, metadata !1168} ; [ DW_TAG_typedef ] [ngx_http_request_body_t] [line 286, size 0, align 0, offset 0] [from ]
!1168 = metadata !{i32 786451, null, metadata !"", metadata !15, i32 279, i64 224, i64 32, i32 0, i32 0, null, metadata !1169, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 279, size 224, align 32, offset 0] [from ]
!1169 = metadata !{metadata !1170, metadata !1171, metadata !1172, metadata !1173, metadata !1174, metadata !1175}
!1170 = metadata !{i32 786445, metadata !1168, metadata !"temp_file", metadata !15, i32 280, i64 32, i64 32, i64 0, i32 0, metadata !695} ; [ DW_TAG_member ] [temp_file] [line 280, size 32, align 32, offset 0] [from ]
!1171 = metadata !{i32 786445, metadata !1168, metadata !"bufs", metadata !15, i32 281, i64 32, i64 32, i64 32, i32 0, metadata !147} ; [ DW_TAG_member ] [bufs] [line 281, size 32, align 32, offset 32] [from ]
!1172 = metadata !{i32 786445, metadata !1168, metadata !"buf", metadata !15, i32 282, i64 32, i64 32, i64 64, i32 0, metadata !153} ; [ DW_TAG_member ] [buf] [line 282, size 32, align 32, offset 64] [from ]
!1173 = metadata !{i32 786445, metadata !1168, metadata !"rest", metadata !15, i32 283, i64 64, i64 32, i64 96, i32 0, metadata !160} ; [ DW_TAG_member ] [rest] [line 283, size 64, align 32, offset 96] [from off_t]
!1174 = metadata !{i32 786445, metadata !1168, metadata !"to_write", metadata !15, i32 284, i64 32, i64 32, i64 160, i32 0, metadata !147} ; [ DW_TAG_member ] [to_write] [line 284, size 32, align 32, offset 160] [from ]
!1175 = metadata !{i32 786445, metadata !1168, metadata !"post_handler", metadata !15, i32 285, i64 32, i64 32, i64 192, i32 0, metadata !1176} ; [ DW_TAG_member ] [post_handler] [line 285, size 32, align 32, offset 192] [from ngx_http_client_body_handler_pt]
!1176 = metadata !{i32 786454, null, metadata !"ngx_http_client_body_handler_pt", metadata !15, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !378} ; [ DW_TAG_typedef ] [ngx_http_client_body_handler_pt] [line 277, size 0, align 0, offset 0] [from ]
!1177 = metadata !{i32 786445, metadata !14, metadata !"lingering_time", metadata !15, i32 383, i64 32, i64 32, i64 2944, i32 0, metadata !410} ; [ DW_TAG_member ] [lingering_time] [line 383, size 32, align 32, offset 2944] [from time_t]
!1178 = metadata !{i32 786445, metadata !14, metadata !"start_sec", metadata !15, i32 384, i64 32, i64 32, i64 2976, i32 0, metadata !410} ; [ DW_TAG_member ] [start_sec] [line 384, size 32, align 32, offset 2976] [from time_t]
!1179 = metadata !{i32 786445, metadata !14, metadata !"start_msec", metadata !15, i32 385, i64 32, i64 32, i64 3008, i32 0, metadata !283} ; [ DW_TAG_member ] [start_msec] [line 385, size 32, align 32, offset 3008] [from ngx_msec_t]
!1180 = metadata !{i32 786445, metadata !14, metadata !"method", metadata !15, i32 387, i64 32, i64 32, i64 3040, i32 0, metadata !62} ; [ DW_TAG_member ] [method] [line 387, size 32, align 32, offset 3040] [from ngx_uint_t]
!1181 = metadata !{i32 786445, metadata !14, metadata !"http_version", metadata !15, i32 388, i64 32, i64 32, i64 3072, i32 0, metadata !62} ; [ DW_TAG_member ] [http_version] [line 388, size 32, align 32, offset 3072] [from ngx_uint_t]
!1182 = metadata !{i32 786445, metadata !14, metadata !"request_line", metadata !15, i32 390, i64 64, i64 32, i64 3104, i32 0, metadata !80} ; [ DW_TAG_member ] [request_line] [line 390, size 64, align 32, offset 3104] [from ngx_str_t]
!1183 = metadata !{i32 786445, metadata !14, metadata !"uri", metadata !15, i32 391, i64 64, i64 32, i64 3168, i32 0, metadata !80} ; [ DW_TAG_member ] [uri] [line 391, size 64, align 32, offset 3168] [from ngx_str_t]
!1184 = metadata !{i32 786445, metadata !14, metadata !"args", metadata !15, i32 392, i64 64, i64 32, i64 3232, i32 0, metadata !80} ; [ DW_TAG_member ] [args] [line 392, size 64, align 32, offset 3232] [from ngx_str_t]
!1185 = metadata !{i32 786445, metadata !14, metadata !"exten", metadata !15, i32 393, i64 64, i64 32, i64 3296, i32 0, metadata !80} ; [ DW_TAG_member ] [exten] [line 393, size 64, align 32, offset 3296] [from ngx_str_t]
!1186 = metadata !{i32 786445, metadata !14, metadata !"unparsed_uri", metadata !15, i32 394, i64 64, i64 32, i64 3360, i32 0, metadata !80} ; [ DW_TAG_member ] [unparsed_uri] [line 394, size 64, align 32, offset 3360] [from ngx_str_t]
!1187 = metadata !{i32 786445, metadata !14, metadata !"method_name", metadata !15, i32 396, i64 64, i64 32, i64 3424, i32 0, metadata !80} ; [ DW_TAG_member ] [method_name] [line 396, size 64, align 32, offset 3424] [from ngx_str_t]
!1188 = metadata !{i32 786445, metadata !14, metadata !"http_protocol", metadata !15, i32 397, i64 64, i64 32, i64 3488, i32 0, metadata !80} ; [ DW_TAG_member ] [http_protocol] [line 397, size 64, align 32, offset 3488] [from ngx_str_t]
!1189 = metadata !{i32 786445, metadata !14, metadata !"out", metadata !15, i32 399, i64 32, i64 32, i64 3552, i32 0, metadata !147} ; [ DW_TAG_member ] [out] [line 399, size 32, align 32, offset 3552] [from ]
!1190 = metadata !{i32 786445, metadata !14, metadata !"main", metadata !15, i32 400, i64 32, i64 32, i64 3584, i32 0, metadata !381} ; [ DW_TAG_member ] [main] [line 400, size 32, align 32, offset 3584] [from ]
!1191 = metadata !{i32 786445, metadata !14, metadata !"parent", metadata !15, i32 401, i64 32, i64 32, i64 3616, i32 0, metadata !381} ; [ DW_TAG_member ] [parent] [line 401, size 32, align 32, offset 3616] [from ]
!1192 = metadata !{i32 786445, metadata !14, metadata !"postponed", metadata !15, i32 402, i64 32, i64 32, i64 3648, i32 0, metadata !1193} ; [ DW_TAG_member ] [postponed] [line 402, size 32, align 32, offset 3648] [from ]
!1193 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1194} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_postponed_request_t]
!1194 = metadata !{i32 786454, null, metadata !"ngx_http_postponed_request_t", metadata !15, i32 333, i64 0, i64 0, i64 0, i32 0, metadata !1195} ; [ DW_TAG_typedef ] [ngx_http_postponed_request_t] [line 333, size 0, align 0, offset 0] [from ngx_http_postponed_request_s]
!1195 = metadata !{i32 786451, null, metadata !"ngx_http_postponed_request_s", metadata !15, i32 335, i64 96, i64 32, i32 0, i32 0, null, metadata !1196, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_postponed_request_s] [line 335, size 96, align 32, offset 0] [from ]
!1196 = metadata !{metadata !1197, metadata !1198, metadata !1199}
!1197 = metadata !{i32 786445, metadata !1195, metadata !"request", metadata !15, i32 336, i64 32, i64 32, i64 0, i32 0, metadata !381} ; [ DW_TAG_member ] [request] [line 336, size 32, align 32, offset 0] [from ]
!1198 = metadata !{i32 786445, metadata !1195, metadata !"out", metadata !15, i32 337, i64 32, i64 32, i64 32, i32 0, metadata !147} ; [ DW_TAG_member ] [out] [line 337, size 32, align 32, offset 32] [from ]
!1199 = metadata !{i32 786445, metadata !1195, metadata !"next", metadata !15, i32 338, i64 32, i64 32, i64 64, i32 0, metadata !1193} ; [ DW_TAG_member ] [next] [line 338, size 32, align 32, offset 64] [from ]
!1200 = metadata !{i32 786445, metadata !14, metadata !"post_subrequest", metadata !15, i32 403, i64 32, i64 32, i64 3680, i32 0, metadata !1201} ; [ DW_TAG_member ] [post_subrequest] [line 403, size 32, align 32, offset 3680] [from ]
!1201 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1202} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_post_subrequest_t]
!1202 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_t", metadata !15, i32 330, i64 0, i64 0, i64 0, i32 0, metadata !1203} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_t] [line 330, size 0, align 0, offset 0] [from ]
!1203 = metadata !{i32 786451, null, metadata !"", metadata !15, i32 327, i64 64, i64 32, i32 0, i32 0, null, metadata !1204, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 327, size 64, align 32, offset 0] [from ]
!1204 = metadata !{metadata !1205, metadata !1210}
!1205 = metadata !{i32 786445, metadata !1203, metadata !"handler", metadata !15, i32 328, i64 32, i64 32, i64 0, i32 0, metadata !1206} ; [ DW_TAG_member ] [handler] [line 328, size 32, align 32, offset 0] [from ngx_http_post_subrequest_pt]
!1206 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_pt", metadata !15, i32 324, i64 0, i64 0, i64 0, i32 0, metadata !1207} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_pt] [line 324, size 0, align 0, offset 0] [from ]
!1207 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1208} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1208 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1209, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1209 = metadata !{metadata !8, metadata !381, metadata !27, metadata !8}
!1210 = metadata !{i32 786445, metadata !1203, metadata !"data", metadata !15, i32 329, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 329, size 32, align 32, offset 32] [from ]
!1211 = metadata !{i32 786445, metadata !14, metadata !"posted_requests", metadata !15, i32 404, i64 32, i64 32, i64 3712, i32 0, metadata !1212} ; [ DW_TAG_member ] [posted_requests] [line 404, size 32, align 32, offset 3712] [from ]
!1212 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1213} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_posted_request_t]
!1213 = metadata !{i32 786454, null, metadata !"ngx_http_posted_request_t", metadata !15, i32 342, i64 0, i64 0, i64 0, i32 0, metadata !1214} ; [ DW_TAG_typedef ] [ngx_http_posted_request_t] [line 342, size 0, align 0, offset 0] [from ngx_http_posted_request_s]
!1214 = metadata !{i32 786451, null, metadata !"ngx_http_posted_request_s", metadata !15, i32 344, i64 64, i64 32, i32 0, i32 0, null, metadata !1215, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_posted_request_s] [line 344, size 64, align 32, offset 0] [from ]
!1215 = metadata !{metadata !1216, metadata !1217}
!1216 = metadata !{i32 786445, metadata !1214, metadata !"request", metadata !15, i32 345, i64 32, i64 32, i64 0, i32 0, metadata !381} ; [ DW_TAG_member ] [request] [line 345, size 32, align 32, offset 0] [from ]
!1217 = metadata !{i32 786445, metadata !1214, metadata !"next", metadata !15, i32 346, i64 32, i64 32, i64 32, i32 0, metadata !1212} ; [ DW_TAG_member ] [next] [line 346, size 32, align 32, offset 32] [from ]
!1218 = metadata !{i32 786445, metadata !14, metadata !"virtual_names", metadata !15, i32 406, i64 32, i64 32, i64 3744, i32 0, metadata !1219} ; [ DW_TAG_member ] [virtual_names] [line 406, size 32, align 32, offset 3744] [from ]
!1219 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1220} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_virtual_names_t]
!1220 = metadata !{i32 786454, null, metadata !"ngx_http_virtual_names_t", metadata !15, i32 310, i64 0, i64 0, i64 0, i32 0, metadata !1221} ; [ DW_TAG_typedef ] [ngx_http_virtual_names_t] [line 310, size 0, align 0, offset 0] [from ]
!1221 = metadata !{i32 786451, null, metadata !"", metadata !15, i32 305, i64 192, i64 32, i32 0, i32 0, null, metadata !1222, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 305, size 192, align 32, offset 0] [from ]
!1222 = metadata !{metadata !1223, metadata !1236, metadata !1237}
!1223 = metadata !{i32 786445, metadata !1221, metadata !"names", metadata !15, i32 306, i64 128, i64 32, i64 0, i32 0, metadata !1224} ; [ DW_TAG_member ] [names] [line 306, size 128, align 32, offset 0] [from ngx_hash_combined_t]
!1224 = metadata !{i32 786454, null, metadata !"ngx_hash_combined_t", metadata !15, i32 49, i64 0, i64 0, i64 0, i32 0, metadata !1225} ; [ DW_TAG_typedef ] [ngx_hash_combined_t] [line 49, size 0, align 0, offset 0] [from ]
!1225 = metadata !{i32 786451, null, metadata !"", metadata !891, i32 45, i64 128, i64 32, i32 0, i32 0, null, metadata !1226, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 45, size 128, align 32, offset 0] [from ]
!1226 = metadata !{metadata !1227, metadata !1228, metadata !1235}
!1227 = metadata !{i32 786445, metadata !1225, metadata !"hash", metadata !891, i32 46, i64 64, i64 32, i64 0, i32 0, metadata !889} ; [ DW_TAG_member ] [hash] [line 46, size 64, align 32, offset 0] [from ngx_hash_t]
!1228 = metadata !{i32 786445, metadata !1225, metadata !"wc_head", metadata !891, i32 47, i64 32, i64 32, i64 64, i32 0, metadata !1229} ; [ DW_TAG_member ] [wc_head] [line 47, size 32, align 32, offset 64] [from ]
!1229 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1230} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_wildcard_t]
!1230 = metadata !{i32 786454, null, metadata !"ngx_hash_wildcard_t", metadata !891, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !1231} ; [ DW_TAG_typedef ] [ngx_hash_wildcard_t] [line 32, size 0, align 0, offset 0] [from ]
!1231 = metadata !{i32 786451, null, metadata !"", metadata !891, i32 29, i64 96, i64 32, i32 0, i32 0, null, metadata !1232, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 96, align 32, offset 0] [from ]
!1232 = metadata !{metadata !1233, metadata !1234}
!1233 = metadata !{i32 786445, metadata !1231, metadata !"hash", metadata !891, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !889} ; [ DW_TAG_member ] [hash] [line 30, size 64, align 32, offset 0] [from ngx_hash_t]
!1234 = metadata !{i32 786445, metadata !1231, metadata !"value", metadata !891, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [value] [line 31, size 32, align 32, offset 64] [from ]
!1235 = metadata !{i32 786445, metadata !1225, metadata !"wc_tail", metadata !891, i32 48, i64 32, i64 32, i64 96, i32 0, metadata !1229} ; [ DW_TAG_member ] [wc_tail] [line 48, size 32, align 32, offset 96] [from ]
!1236 = metadata !{i32 786445, metadata !1221, metadata !"nregex", metadata !15, i32 308, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [nregex] [line 308, size 32, align 32, offset 128] [from ngx_uint_t]
!1237 = metadata !{i32 786445, metadata !1221, metadata !"regex", metadata !15, i32 309, i64 32, i64 32, i64 160, i32 0, metadata !1238} ; [ DW_TAG_member ] [regex] [line 309, size 32, align 32, offset 160] [from ]
!1238 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1239} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_server_name_t]
!1239 = metadata !{i32 786454, null, metadata !"ngx_http_server_name_t", metadata !15, i32 302, i64 0, i64 0, i64 0, i32 0, metadata !1240} ; [ DW_TAG_typedef ] [ngx_http_server_name_t] [line 302, size 0, align 0, offset 0] [from ngx_http_server_name_s]
!1240 = metadata !{i32 786451, null, metadata !"ngx_http_server_name_s", metadata !1241, i32 271, i64 128, i64 32, i32 0, i32 0, null, metadata !1242, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_server_name_s] [line 271, size 128, align 32, offset 0] [from ]
!1241 = metadata !{i32 786473, metadata !"src/http/ngx_http_core_module.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1242 = metadata !{metadata !1243, metadata !1287, metadata !1443}
!1243 = metadata !{i32 786445, metadata !1240, metadata !"regex", metadata !1241, i32 273, i64 32, i64 32, i64 0, i32 0, metadata !1244} ; [ DW_TAG_member ] [regex] [line 273, size 32, align 32, offset 0] [from ]
!1244 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1245} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_t]
!1245 = metadata !{i32 786454, null, metadata !"ngx_http_regex_t", metadata !1241, i32 77, i64 0, i64 0, i64 0, i32 0, metadata !1246} ; [ DW_TAG_typedef ] [ngx_http_regex_t] [line 77, size 0, align 0, offset 0] [from ]
!1246 = metadata !{i32 786451, null, metadata !"", metadata !1247, i32 71, i64 192, i64 32, i32 0, i32 0, null, metadata !1248, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 71, size 192, align 32, offset 0] [from ]
!1247 = metadata !{i32 786473, metadata !"src/http/ngx_http_variables.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1248 = metadata !{metadata !1249, metadata !1277, metadata !1278, metadata !1285, metadata !1286}
!1249 = metadata !{i32 786445, metadata !1246, metadata !"regex", metadata !1247, i32 72, i64 32, i64 32, i64 0, i32 0, metadata !1250} ; [ DW_TAG_member ] [regex] [line 72, size 32, align 32, offset 0] [from ]
!1250 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1251} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_regex_t]
!1251 = metadata !{i32 786454, null, metadata !"ngx_regex_t", metadata !1247, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !1252} ; [ DW_TAG_typedef ] [ngx_regex_t] [line 26, size 0, align 0, offset 0] [from ]
!1252 = metadata !{i32 786451, null, metadata !"", metadata !1253, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !1254, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!1253 = metadata !{i32 786473, metadata !"src/core/ngx_regex.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1254 = metadata !{metadata !1255, metadata !1260}
!1255 = metadata !{i32 786445, metadata !1252, metadata !"code", metadata !1253, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1256} ; [ DW_TAG_member ] [code] [line 24, size 32, align 32, offset 0] [from ]
!1256 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1257} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre]
!1257 = metadata !{i32 786454, null, metadata !"pcre", metadata !1253, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !1258} ; [ DW_TAG_typedef ] [pcre] [line 277, size 0, align 0, offset 0] [from real_pcre]
!1258 = metadata !{i32 786451, null, metadata !"real_pcre", metadata !1259, i32 276, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [real_pcre] [line 276, size 0, align 0, offset 0] [fwd] [from ]
!1259 = metadata !{i32 786473, metadata !"/include/pcre.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1260 = metadata !{i32 786445, metadata !1252, metadata !"extra", metadata !1253, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !1261} ; [ DW_TAG_member ] [extra] [line 25, size 32, align 32, offset 32] [from ]
!1261 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1262} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre_extra]
!1262 = metadata !{i32 786454, null, metadata !"pcre_extra", metadata !1253, i32 320, i64 0, i64 0, i64 0, i32 0, metadata !1263} ; [ DW_TAG_typedef ] [pcre_extra] [line 320, size 0, align 0, offset 0] [from pcre_extra]
!1263 = metadata !{i32 786451, null, metadata !"pcre_extra", metadata !1259, i32 311, i64 256, i64 32, i32 0, i32 0, null, metadata !1264, i32 0, i32 0} ; [ DW_TAG_structure_type ] [pcre_extra] [line 311, size 256, align 32, offset 0] [from ]
!1264 = metadata !{metadata !1265, metadata !1266, metadata !1267, metadata !1268, metadata !1269, metadata !1272, metadata !1273, metadata !1276}
!1265 = metadata !{i32 786445, metadata !1263, metadata !"flags", metadata !1259, i32 312, i64 32, i64 32, i64 0, i32 0, metadata !96} ; [ DW_TAG_member ] [flags] [line 312, size 32, align 32, offset 0] [from long unsigned int]
!1266 = metadata !{i32 786445, metadata !1263, metadata !"study_data", metadata !1259, i32 313, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [study_data] [line 313, size 32, align 32, offset 32] [from ]
!1267 = metadata !{i32 786445, metadata !1263, metadata !"match_limit", metadata !1259, i32 314, i64 32, i64 32, i64 64, i32 0, metadata !96} ; [ DW_TAG_member ] [match_limit] [line 314, size 32, align 32, offset 64] [from long unsigned int]
!1268 = metadata !{i32 786445, metadata !1263, metadata !"callout_data", metadata !1259, i32 315, i64 32, i64 32, i64 96, i32 0, metadata !27} ; [ DW_TAG_member ] [callout_data] [line 315, size 32, align 32, offset 96] [from ]
!1269 = metadata !{i32 786445, metadata !1263, metadata !"tables", metadata !1259, i32 316, i64 32, i64 32, i64 128, i32 0, metadata !1270} ; [ DW_TAG_member ] [tables] [line 316, size 32, align 32, offset 128] [from ]
!1270 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1271} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1271 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !90} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!1272 = metadata !{i32 786445, metadata !1263, metadata !"match_limit_recursion", metadata !1259, i32 317, i64 32, i64 32, i64 160, i32 0, metadata !96} ; [ DW_TAG_member ] [match_limit_recursion] [line 317, size 32, align 32, offset 160] [from long unsigned int]
!1273 = metadata !{i32 786445, metadata !1263, metadata !"mark", metadata !1259, i32 318, i64 32, i64 32, i64 192, i32 0, metadata !1274} ; [ DW_TAG_member ] [mark] [line 318, size 32, align 32, offset 192] [from ]
!1274 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1275} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1275 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !90} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!1276 = metadata !{i32 786445, metadata !1263, metadata !"executable_jit", metadata !1259, i32 319, i64 32, i64 32, i64 224, i32 0, metadata !27} ; [ DW_TAG_member ] [executable_jit] [line 319, size 32, align 32, offset 224] [from ]
!1277 = metadata !{i32 786445, metadata !1246, metadata !"ncaptures", metadata !1247, i32 73, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [ncaptures] [line 73, size 32, align 32, offset 32] [from ngx_uint_t]
!1278 = metadata !{i32 786445, metadata !1246, metadata !"variables", metadata !1247, i32 74, i64 32, i64 32, i64 64, i32 0, metadata !1279} ; [ DW_TAG_member ] [variables] [line 74, size 32, align 32, offset 64] [from ]
!1279 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1280} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_variable_t]
!1280 = metadata !{i32 786454, null, metadata !"ngx_http_regex_variable_t", metadata !1247, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !1281} ; [ DW_TAG_typedef ] [ngx_http_regex_variable_t] [line 68, size 0, align 0, offset 0] [from ]
!1281 = metadata !{i32 786451, null, metadata !"", metadata !1247, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !1282, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!1282 = metadata !{metadata !1283, metadata !1284}
!1283 = metadata !{i32 786445, metadata !1281, metadata !"capture", metadata !1247, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [capture] [line 66, size 32, align 32, offset 0] [from ngx_uint_t]
!1284 = metadata !{i32 786445, metadata !1281, metadata !"index", metadata !1247, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [index] [line 67, size 32, align 32, offset 32] [from ngx_int_t]
!1285 = metadata !{i32 786445, metadata !1246, metadata !"nvariables", metadata !1247, i32 75, i64 32, i64 32, i64 96, i32 0, metadata !62} ; [ DW_TAG_member ] [nvariables] [line 75, size 32, align 32, offset 96] [from ngx_uint_t]
!1286 = metadata !{i32 786445, metadata !1246, metadata !"name", metadata !1247, i32 76, i64 64, i64 32, i64 128, i32 0, metadata !80} ; [ DW_TAG_member ] [name] [line 76, size 64, align 32, offset 128] [from ngx_str_t]
!1287 = metadata !{i32 786445, metadata !1240, metadata !"server", metadata !1241, i32 275, i64 32, i64 32, i64 32, i32 0, metadata !1288} ; [ DW_TAG_member ] [server] [line 275, size 32, align 32, offset 32] [from ]
!1288 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1289} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_srv_conf_t]
!1289 = metadata !{i32 786454, null, metadata !"ngx_http_core_srv_conf_t", metadata !1241, i32 205, i64 0, i64 0, i64 0, i32 0, metadata !1290} ; [ DW_TAG_typedef ] [ngx_http_core_srv_conf_t] [line 205, size 0, align 0, offset 0] [from ]
!1290 = metadata !{i32 786451, null, metadata !"", metadata !1241, i32 178, i64 608, i64 32, i32 0, i32 0, null, metadata !1291, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 178, size 608, align 32, offset 0] [from ]
!1291 = metadata !{metadata !1292, metadata !1293, metadata !1302, metadata !1303, metadata !1304, metadata !1305, metadata !1306, metadata !1307, metadata !1308, metadata !1309, metadata !1310, metadata !1311, metadata !1312, metadata !1313}
!1292 = metadata !{i32 786445, metadata !1290, metadata !"server_names", metadata !1241, i32 180, i64 160, i64 32, i64 0, i32 0, metadata !392} ; [ DW_TAG_member ] [server_names] [line 180, size 160, align 32, offset 0] [from ngx_array_t]
!1293 = metadata !{i32 786445, metadata !1290, metadata !"ctx", metadata !1241, i32 183, i64 32, i64 32, i64 160, i32 0, metadata !1294} ; [ DW_TAG_member ] [ctx] [line 183, size 32, align 32, offset 160] [from ]
!1294 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1295} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_conf_ctx_t]
!1295 = metadata !{i32 786454, null, metadata !"ngx_http_conf_ctx_t", metadata !1241, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !1296} ; [ DW_TAG_typedef ] [ngx_http_conf_ctx_t] [line 21, size 0, align 0, offset 0] [from ]
!1296 = metadata !{i32 786451, null, metadata !"", metadata !1297, i32 17, i64 96, i64 32, i32 0, i32 0, null, metadata !1298, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 17, size 96, align 32, offset 0] [from ]
!1297 = metadata !{i32 786473, metadata !"src/http/ngx_http_config.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1298 = metadata !{metadata !1299, metadata !1300, metadata !1301}
!1299 = metadata !{i32 786445, metadata !1296, metadata !"main_conf", metadata !1297, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !372} ; [ DW_TAG_member ] [main_conf] [line 18, size 32, align 32, offset 0] [from ]
!1300 = metadata !{i32 786445, metadata !1296, metadata !"srv_conf", metadata !1297, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !372} ; [ DW_TAG_member ] [srv_conf] [line 19, size 32, align 32, offset 32] [from ]
!1301 = metadata !{i32 786445, metadata !1296, metadata !"loc_conf", metadata !1297, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !372} ; [ DW_TAG_member ] [loc_conf] [line 20, size 32, align 32, offset 64] [from ]
!1302 = metadata !{i32 786445, metadata !1290, metadata !"server_name", metadata !1241, i32 185, i64 64, i64 32, i64 192, i32 0, metadata !80} ; [ DW_TAG_member ] [server_name] [line 185, size 64, align 32, offset 192] [from ngx_str_t]
!1303 = metadata !{i32 786445, metadata !1290, metadata !"connection_pool_size", metadata !1241, i32 187, i64 32, i64 32, i64 256, i32 0, metadata !85} ; [ DW_TAG_member ] [connection_pool_size] [line 187, size 32, align 32, offset 256] [from size_t]
!1304 = metadata !{i32 786445, metadata !1290, metadata !"request_pool_size", metadata !1241, i32 188, i64 32, i64 32, i64 288, i32 0, metadata !85} ; [ DW_TAG_member ] [request_pool_size] [line 188, size 32, align 32, offset 288] [from size_t]
!1305 = metadata !{i32 786445, metadata !1290, metadata !"client_header_buffer_size", metadata !1241, i32 189, i64 32, i64 32, i64 320, i32 0, metadata !85} ; [ DW_TAG_member ] [client_header_buffer_size] [line 189, size 32, align 32, offset 320] [from size_t]
!1306 = metadata !{i32 786445, metadata !1290, metadata !"large_client_header_buffers", metadata !1241, i32 191, i64 64, i64 32, i64 352, i32 0, metadata !675} ; [ DW_TAG_member ] [large_client_header_buffers] [line 191, size 64, align 32, offset 352] [from ngx_bufs_t]
!1307 = metadata !{i32 786445, metadata !1290, metadata !"client_header_timeout", metadata !1241, i32 193, i64 32, i64 32, i64 416, i32 0, metadata !283} ; [ DW_TAG_member ] [client_header_timeout] [line 193, size 32, align 32, offset 416] [from ngx_msec_t]
!1308 = metadata !{i32 786445, metadata !1290, metadata !"ignore_invalid_headers", metadata !1241, i32 195, i64 32, i64 32, i64 448, i32 0, metadata !881} ; [ DW_TAG_member ] [ignore_invalid_headers] [line 195, size 32, align 32, offset 448] [from ngx_flag_t]
!1309 = metadata !{i32 786445, metadata !1290, metadata !"merge_slashes", metadata !1241, i32 196, i64 32, i64 32, i64 480, i32 0, metadata !881} ; [ DW_TAG_member ] [merge_slashes] [line 196, size 32, align 32, offset 480] [from ngx_flag_t]
!1310 = metadata !{i32 786445, metadata !1290, metadata !"underscores_in_headers", metadata !1241, i32 197, i64 32, i64 32, i64 512, i32 0, metadata !881} ; [ DW_TAG_member ] [underscores_in_headers] [line 197, size 32, align 32, offset 512] [from ngx_flag_t]
!1311 = metadata !{i32 786445, metadata !1290, metadata !"listen", metadata !1241, i32 199, i64 1, i64 32, i64 544, i32 0, metadata !19} ; [ DW_TAG_member ] [listen] [line 199, size 1, align 32, offset 544] [from unsigned int]
!1312 = metadata !{i32 786445, metadata !1290, metadata !"captures", metadata !1241, i32 201, i64 1, i64 32, i64 545, i32 0, metadata !19} ; [ DW_TAG_member ] [captures] [line 201, size 1, align 32, offset 545] [from unsigned int]
!1313 = metadata !{i32 786445, metadata !1290, metadata !"named_locations", metadata !1241, i32 204, i64 32, i64 32, i64 576, i32 0, metadata !1314} ; [ DW_TAG_member ] [named_locations] [line 204, size 32, align 32, offset 576] [from ]
!1314 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1315} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1315 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1316} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_loc_conf_t]
!1316 = metadata !{i32 786454, null, metadata !"ngx_http_core_loc_conf_t", metadata !1241, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !1317} ; [ DW_TAG_typedef ] [ngx_http_core_loc_conf_t] [line 53, size 0, align 0, offset 0] [from ngx_http_core_loc_conf_s]
!1317 = metadata !{i32 786451, null, metadata !"ngx_http_core_loc_conf_s", metadata !1241, i32 298, i64 2656, i64 32, i32 0, i32 0, null, metadata !1318, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_core_loc_conf_s] [line 298, size 2656, align 32, offset 0] [from ]
!1318 = metadata !{metadata !1319, metadata !1320, metadata !1321, metadata !1322, metadata !1323, metadata !1324, metadata !1325, metadata !1326, metadata !1327, metadata !1328, metadata !1341, metadata !1342, metadata !1343, metadata !1344, metadata !1345, metadata !1347, metadata !1348, metadata !1349, metadata !1350, metadata !1351, metadata !1352, metadata !1353, metadata !1354, metadata !1355, metadata !1356, metadata !1357, metadata !1358, metadata !1359, metadata !1360, metadata !1361, metadata !1362, metadata !1363, metadata !1364, metadata !1365, metadata !1366, metadata !1367, metadata !1368, metadata !1369, metadata !1370, metadata !1371, metadata !1372, metadata !1373, metadata !1374, metadata !1375, metadata !1376, metadata !1377, metadata !1378, metadata !1379, metadata !1380, metadata !1381, metadata !1382, metadata !1383, metadata !1384, metadata !1385, metadata !1386, metadata !1387, metadata !1388, metadata !1389, metadata !1390, metadata !1391, metadata !1392, metadata !1393, metadata !1394, metadata !1395, metadata !1396, metadata !1397, metadata !1398, metadata !1399, metadata !1400, metadata !1411, metadata !1412, metadata !1422, metadata !1423, metadata !1435, metadata !1436, metadata !1437, metadata !1438, metadata !1439, metadata !1440, metadata !1441, metadata !1442}
!1319 = metadata !{i32 786445, metadata !1317, metadata !"name", metadata !1241, i32 299, i64 64, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [name] [line 299, size 64, align 32, offset 0] [from ngx_str_t]
!1320 = metadata !{i32 786445, metadata !1317, metadata !"regex", metadata !1241, i32 302, i64 32, i64 32, i64 64, i32 0, metadata !1244} ; [ DW_TAG_member ] [regex] [line 302, size 32, align 32, offset 64] [from ]
!1321 = metadata !{i32 786445, metadata !1317, metadata !"noname", metadata !1241, i32 305, i64 1, i64 32, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [noname] [line 305, size 1, align 32, offset 96] [from unsigned int]
!1322 = metadata !{i32 786445, metadata !1317, metadata !"lmt_excpt", metadata !1241, i32 306, i64 1, i64 32, i64 97, i32 0, metadata !19} ; [ DW_TAG_member ] [lmt_excpt] [line 306, size 1, align 32, offset 97] [from unsigned int]
!1323 = metadata !{i32 786445, metadata !1317, metadata !"named", metadata !1241, i32 307, i64 1, i64 32, i64 98, i32 0, metadata !19} ; [ DW_TAG_member ] [named] [line 307, size 1, align 32, offset 98] [from unsigned int]
!1324 = metadata !{i32 786445, metadata !1317, metadata !"exact_match", metadata !1241, i32 309, i64 1, i64 32, i64 99, i32 0, metadata !19} ; [ DW_TAG_member ] [exact_match] [line 309, size 1, align 32, offset 99] [from unsigned int]
!1325 = metadata !{i32 786445, metadata !1317, metadata !"noregex", metadata !1241, i32 310, i64 1, i64 32, i64 100, i32 0, metadata !19} ; [ DW_TAG_member ] [noregex] [line 310, size 1, align 32, offset 100] [from unsigned int]
!1326 = metadata !{i32 786445, metadata !1317, metadata !"auto_redirect", metadata !1241, i32 312, i64 1, i64 32, i64 101, i32 0, metadata !19} ; [ DW_TAG_member ] [auto_redirect] [line 312, size 1, align 32, offset 101] [from unsigned int]
!1327 = metadata !{i32 786445, metadata !1317, metadata !"gzip_disable_msie6", metadata !1241, i32 314, i64 2, i64 32, i64 102, i32 0, metadata !19} ; [ DW_TAG_member ] [gzip_disable_msie6] [line 314, size 2, align 32, offset 102] [from unsigned int]
!1328 = metadata !{i32 786445, metadata !1317, metadata !"static_locations", metadata !1241, i32 320, i64 32, i64 32, i64 128, i32 0, metadata !1329} ; [ DW_TAG_member ] [static_locations] [line 320, size 32, align 32, offset 128] [from ]
!1329 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1330} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_location_tree_node_t]
!1330 = metadata !{i32 786454, null, metadata !"ngx_http_location_tree_node_t", metadata !1241, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !1331} ; [ DW_TAG_typedef ] [ngx_http_location_tree_node_t] [line 52, size 0, align 0, offset 0] [from ngx_http_location_tree_node_s]
!1331 = metadata !{i32 786451, null, metadata !"ngx_http_location_tree_node_s", metadata !1241, i32 447, i64 192, i64 32, i32 0, i32 0, null, metadata !1332, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_location_tree_node_s] [line 447, size 192, align 32, offset 0] [from ]
!1332 = metadata !{metadata !1333, metadata !1334, metadata !1335, metadata !1336, metadata !1337, metadata !1338, metadata !1339, metadata !1340}
!1333 = metadata !{i32 786445, metadata !1331, metadata !"left", metadata !1241, i32 448, i64 32, i64 32, i64 0, i32 0, metadata !1329} ; [ DW_TAG_member ] [left] [line 448, size 32, align 32, offset 0] [from ]
!1334 = metadata !{i32 786445, metadata !1331, metadata !"right", metadata !1241, i32 449, i64 32, i64 32, i64 32, i32 0, metadata !1329} ; [ DW_TAG_member ] [right] [line 449, size 32, align 32, offset 32] [from ]
!1335 = metadata !{i32 786445, metadata !1331, metadata !"tree", metadata !1241, i32 450, i64 32, i64 32, i64 64, i32 0, metadata !1329} ; [ DW_TAG_member ] [tree] [line 450, size 32, align 32, offset 64] [from ]
!1336 = metadata !{i32 786445, metadata !1331, metadata !"exact", metadata !1241, i32 452, i64 32, i64 32, i64 96, i32 0, metadata !1315} ; [ DW_TAG_member ] [exact] [line 452, size 32, align 32, offset 96] [from ]
!1337 = metadata !{i32 786445, metadata !1331, metadata !"inclusive", metadata !1241, i32 453, i64 32, i64 32, i64 128, i32 0, metadata !1315} ; [ DW_TAG_member ] [inclusive] [line 453, size 32, align 32, offset 128] [from ]
!1338 = metadata !{i32 786445, metadata !1331, metadata !"auto_redirect", metadata !1241, i32 455, i64 8, i64 8, i64 160, i32 0, metadata !88} ; [ DW_TAG_member ] [auto_redirect] [line 455, size 8, align 8, offset 160] [from u_char]
!1339 = metadata !{i32 786445, metadata !1331, metadata !"len", metadata !1241, i32 456, i64 8, i64 8, i64 168, i32 0, metadata !88} ; [ DW_TAG_member ] [len] [line 456, size 8, align 8, offset 168] [from u_char]
!1340 = metadata !{i32 786445, metadata !1331, metadata !"name", metadata !1241, i32 457, i64 8, i64 8, i64 176, i32 0, metadata !904} ; [ DW_TAG_member ] [name] [line 457, size 8, align 8, offset 176] [from ]
!1341 = metadata !{i32 786445, metadata !1317, metadata !"regex_locations", metadata !1241, i32 322, i64 32, i64 32, i64 160, i32 0, metadata !1314} ; [ DW_TAG_member ] [regex_locations] [line 322, size 32, align 32, offset 160] [from ]
!1342 = metadata !{i32 786445, metadata !1317, metadata !"loc_conf", metadata !1241, i32 326, i64 32, i64 32, i64 192, i32 0, metadata !372} ; [ DW_TAG_member ] [loc_conf] [line 326, size 32, align 32, offset 192] [from ]
!1343 = metadata !{i32 786445, metadata !1317, metadata !"limit_except", metadata !1241, i32 328, i64 32, i64 32, i64 224, i32 0, metadata !18} ; [ DW_TAG_member ] [limit_except] [line 328, size 32, align 32, offset 224] [from uint32_t]
!1344 = metadata !{i32 786445, metadata !1317, metadata !"limit_except_loc_conf", metadata !1241, i32 329, i64 32, i64 32, i64 256, i32 0, metadata !372} ; [ DW_TAG_member ] [limit_except_loc_conf] [line 329, size 32, align 32, offset 256] [from ]
!1345 = metadata !{i32 786445, metadata !1317, metadata !"handler", metadata !1241, i32 331, i64 32, i64 32, i64 288, i32 0, metadata !1346} ; [ DW_TAG_member ] [handler] [line 331, size 32, align 32, offset 288] [from ngx_http_handler_pt]
!1346 = metadata !{i32 786454, null, metadata !"ngx_http_handler_pt", metadata !1241, i32 350, i64 0, i64 0, i64 0, i32 0, metadata !1050} ; [ DW_TAG_typedef ] [ngx_http_handler_pt] [line 350, size 0, align 0, offset 0] [from ]
!1347 = metadata !{i32 786445, metadata !1317, metadata !"alias", metadata !1241, i32 334, i64 32, i64 32, i64 320, i32 0, metadata !85} ; [ DW_TAG_member ] [alias] [line 334, size 32, align 32, offset 320] [from size_t]
!1348 = metadata !{i32 786445, metadata !1317, metadata !"root", metadata !1241, i32 335, i64 64, i64 32, i64 352, i32 0, metadata !80} ; [ DW_TAG_member ] [root] [line 335, size 64, align 32, offset 352] [from ngx_str_t]
!1349 = metadata !{i32 786445, metadata !1317, metadata !"post_action", metadata !1241, i32 336, i64 64, i64 32, i64 416, i32 0, metadata !80} ; [ DW_TAG_member ] [post_action] [line 336, size 64, align 32, offset 416] [from ngx_str_t]
!1350 = metadata !{i32 786445, metadata !1317, metadata !"root_lengths", metadata !1241, i32 338, i64 32, i64 32, i64 480, i32 0, metadata !765} ; [ DW_TAG_member ] [root_lengths] [line 338, size 32, align 32, offset 480] [from ]
!1351 = metadata !{i32 786445, metadata !1317, metadata !"root_values", metadata !1241, i32 339, i64 32, i64 32, i64 512, i32 0, metadata !765} ; [ DW_TAG_member ] [root_values] [line 339, size 32, align 32, offset 512] [from ]
!1352 = metadata !{i32 786445, metadata !1317, metadata !"types", metadata !1241, i32 341, i64 32, i64 32, i64 544, i32 0, metadata !765} ; [ DW_TAG_member ] [types] [line 341, size 32, align 32, offset 544] [from ]
!1353 = metadata !{i32 786445, metadata !1317, metadata !"types_hash", metadata !1241, i32 342, i64 64, i64 32, i64 576, i32 0, metadata !889} ; [ DW_TAG_member ] [types_hash] [line 342, size 64, align 32, offset 576] [from ngx_hash_t]
!1354 = metadata !{i32 786445, metadata !1317, metadata !"default_type", metadata !1241, i32 343, i64 64, i64 32, i64 640, i32 0, metadata !80} ; [ DW_TAG_member ] [default_type] [line 343, size 64, align 32, offset 640] [from ngx_str_t]
!1355 = metadata !{i32 786445, metadata !1317, metadata !"client_max_body_size", metadata !1241, i32 345, i64 64, i64 32, i64 704, i32 0, metadata !160} ; [ DW_TAG_member ] [client_max_body_size] [line 345, size 64, align 32, offset 704] [from off_t]
!1356 = metadata !{i32 786445, metadata !1317, metadata !"directio", metadata !1241, i32 346, i64 64, i64 32, i64 768, i32 0, metadata !160} ; [ DW_TAG_member ] [directio] [line 346, size 64, align 32, offset 768] [from off_t]
!1357 = metadata !{i32 786445, metadata !1317, metadata !"directio_alignment", metadata !1241, i32 347, i64 64, i64 32, i64 832, i32 0, metadata !160} ; [ DW_TAG_member ] [directio_alignment] [line 347, size 64, align 32, offset 832] [from off_t]
!1358 = metadata !{i32 786445, metadata !1317, metadata !"client_body_buffer_size", metadata !1241, i32 349, i64 32, i64 32, i64 896, i32 0, metadata !85} ; [ DW_TAG_member ] [client_body_buffer_size] [line 349, size 32, align 32, offset 896] [from size_t]
!1359 = metadata !{i32 786445, metadata !1317, metadata !"send_lowat", metadata !1241, i32 350, i64 32, i64 32, i64 928, i32 0, metadata !85} ; [ DW_TAG_member ] [send_lowat] [line 350, size 32, align 32, offset 928] [from size_t]
!1360 = metadata !{i32 786445, metadata !1317, metadata !"postpone_output", metadata !1241, i32 351, i64 32, i64 32, i64 960, i32 0, metadata !85} ; [ DW_TAG_member ] [postpone_output] [line 351, size 32, align 32, offset 960] [from size_t]
!1361 = metadata !{i32 786445, metadata !1317, metadata !"limit_rate", metadata !1241, i32 352, i64 32, i64 32, i64 992, i32 0, metadata !85} ; [ DW_TAG_member ] [limit_rate] [line 352, size 32, align 32, offset 992] [from size_t]
!1362 = metadata !{i32 786445, metadata !1317, metadata !"limit_rate_after", metadata !1241, i32 353, i64 32, i64 32, i64 1024, i32 0, metadata !85} ; [ DW_TAG_member ] [limit_rate_after] [line 353, size 32, align 32, offset 1024] [from size_t]
!1363 = metadata !{i32 786445, metadata !1317, metadata !"sendfile_max_chunk", metadata !1241, i32 354, i64 32, i64 32, i64 1056, i32 0, metadata !85} ; [ DW_TAG_member ] [sendfile_max_chunk] [line 354, size 32, align 32, offset 1056] [from size_t]
!1364 = metadata !{i32 786445, metadata !1317, metadata !"read_ahead", metadata !1241, i32 355, i64 32, i64 32, i64 1088, i32 0, metadata !85} ; [ DW_TAG_member ] [read_ahead] [line 355, size 32, align 32, offset 1088] [from size_t]
!1365 = metadata !{i32 786445, metadata !1317, metadata !"client_body_timeout", metadata !1241, i32 357, i64 32, i64 32, i64 1120, i32 0, metadata !283} ; [ DW_TAG_member ] [client_body_timeout] [line 357, size 32, align 32, offset 1120] [from ngx_msec_t]
!1366 = metadata !{i32 786445, metadata !1317, metadata !"send_timeout", metadata !1241, i32 358, i64 32, i64 32, i64 1152, i32 0, metadata !283} ; [ DW_TAG_member ] [send_timeout] [line 358, size 32, align 32, offset 1152] [from ngx_msec_t]
!1367 = metadata !{i32 786445, metadata !1317, metadata !"keepalive_timeout", metadata !1241, i32 359, i64 32, i64 32, i64 1184, i32 0, metadata !283} ; [ DW_TAG_member ] [keepalive_timeout] [line 359, size 32, align 32, offset 1184] [from ngx_msec_t]
!1368 = metadata !{i32 786445, metadata !1317, metadata !"lingering_time", metadata !1241, i32 360, i64 32, i64 32, i64 1216, i32 0, metadata !283} ; [ DW_TAG_member ] [lingering_time] [line 360, size 32, align 32, offset 1216] [from ngx_msec_t]
!1369 = metadata !{i32 786445, metadata !1317, metadata !"lingering_timeout", metadata !1241, i32 361, i64 32, i64 32, i64 1248, i32 0, metadata !283} ; [ DW_TAG_member ] [lingering_timeout] [line 361, size 32, align 32, offset 1248] [from ngx_msec_t]
!1370 = metadata !{i32 786445, metadata !1317, metadata !"resolver_timeout", metadata !1241, i32 362, i64 32, i64 32, i64 1280, i32 0, metadata !283} ; [ DW_TAG_member ] [resolver_timeout] [line 362, size 32, align 32, offset 1280] [from ngx_msec_t]
!1371 = metadata !{i32 786445, metadata !1317, metadata !"resolver", metadata !1241, i32 364, i64 32, i64 32, i64 1312, i32 0, metadata !986} ; [ DW_TAG_member ] [resolver] [line 364, size 32, align 32, offset 1312] [from ]
!1372 = metadata !{i32 786445, metadata !1317, metadata !"keepalive_header", metadata !1241, i32 366, i64 32, i64 32, i64 1344, i32 0, metadata !410} ; [ DW_TAG_member ] [keepalive_header] [line 366, size 32, align 32, offset 1344] [from time_t]
!1373 = metadata !{i32 786445, metadata !1317, metadata !"keepalive_requests", metadata !1241, i32 368, i64 32, i64 32, i64 1376, i32 0, metadata !62} ; [ DW_TAG_member ] [keepalive_requests] [line 368, size 32, align 32, offset 1376] [from ngx_uint_t]
!1374 = metadata !{i32 786445, metadata !1317, metadata !"keepalive_disable", metadata !1241, i32 369, i64 32, i64 32, i64 1408, i32 0, metadata !62} ; [ DW_TAG_member ] [keepalive_disable] [line 369, size 32, align 32, offset 1408] [from ngx_uint_t]
!1375 = metadata !{i32 786445, metadata !1317, metadata !"satisfy", metadata !1241, i32 370, i64 32, i64 32, i64 1440, i32 0, metadata !62} ; [ DW_TAG_member ] [satisfy] [line 370, size 32, align 32, offset 1440] [from ngx_uint_t]
!1376 = metadata !{i32 786445, metadata !1317, metadata !"lingering_close", metadata !1241, i32 371, i64 32, i64 32, i64 1472, i32 0, metadata !62} ; [ DW_TAG_member ] [lingering_close] [line 371, size 32, align 32, offset 1472] [from ngx_uint_t]
!1377 = metadata !{i32 786445, metadata !1317, metadata !"if_modified_since", metadata !1241, i32 372, i64 32, i64 32, i64 1504, i32 0, metadata !62} ; [ DW_TAG_member ] [if_modified_since] [line 372, size 32, align 32, offset 1504] [from ngx_uint_t]
!1378 = metadata !{i32 786445, metadata !1317, metadata !"max_ranges", metadata !1241, i32 373, i64 32, i64 32, i64 1536, i32 0, metadata !62} ; [ DW_TAG_member ] [max_ranges] [line 373, size 32, align 32, offset 1536] [from ngx_uint_t]
!1379 = metadata !{i32 786445, metadata !1317, metadata !"client_body_in_file_only", metadata !1241, i32 374, i64 32, i64 32, i64 1568, i32 0, metadata !62} ; [ DW_TAG_member ] [client_body_in_file_only] [line 374, size 32, align 32, offset 1568] [from ngx_uint_t]
!1380 = metadata !{i32 786445, metadata !1317, metadata !"client_body_in_single_buffer", metadata !1241, i32 376, i64 32, i64 32, i64 1600, i32 0, metadata !881} ; [ DW_TAG_member ] [client_body_in_single_buffer] [line 376, size 32, align 32, offset 1600] [from ngx_flag_t]
!1381 = metadata !{i32 786445, metadata !1317, metadata !"internal", metadata !1241, i32 378, i64 32, i64 32, i64 1632, i32 0, metadata !881} ; [ DW_TAG_member ] [internal] [line 378, size 32, align 32, offset 1632] [from ngx_flag_t]
!1382 = metadata !{i32 786445, metadata !1317, metadata !"sendfile", metadata !1241, i32 379, i64 32, i64 32, i64 1664, i32 0, metadata !881} ; [ DW_TAG_member ] [sendfile] [line 379, size 32, align 32, offset 1664] [from ngx_flag_t]
!1383 = metadata !{i32 786445, metadata !1317, metadata !"tcp_nopush", metadata !1241, i32 383, i64 32, i64 32, i64 1696, i32 0, metadata !881} ; [ DW_TAG_member ] [tcp_nopush] [line 383, size 32, align 32, offset 1696] [from ngx_flag_t]
!1384 = metadata !{i32 786445, metadata !1317, metadata !"tcp_nodelay", metadata !1241, i32 384, i64 32, i64 32, i64 1728, i32 0, metadata !881} ; [ DW_TAG_member ] [tcp_nodelay] [line 384, size 32, align 32, offset 1728] [from ngx_flag_t]
!1385 = metadata !{i32 786445, metadata !1317, metadata !"reset_timedout_connection", metadata !1241, i32 385, i64 32, i64 32, i64 1760, i32 0, metadata !881} ; [ DW_TAG_member ] [reset_timedout_connection] [line 385, size 32, align 32, offset 1760] [from ngx_flag_t]
!1386 = metadata !{i32 786445, metadata !1317, metadata !"server_name_in_redirect", metadata !1241, i32 386, i64 32, i64 32, i64 1792, i32 0, metadata !881} ; [ DW_TAG_member ] [server_name_in_redirect] [line 386, size 32, align 32, offset 1792] [from ngx_flag_t]
!1387 = metadata !{i32 786445, metadata !1317, metadata !"port_in_redirect", metadata !1241, i32 387, i64 32, i64 32, i64 1824, i32 0, metadata !881} ; [ DW_TAG_member ] [port_in_redirect] [line 387, size 32, align 32, offset 1824] [from ngx_flag_t]
!1388 = metadata !{i32 786445, metadata !1317, metadata !"msie_padding", metadata !1241, i32 388, i64 32, i64 32, i64 1856, i32 0, metadata !881} ; [ DW_TAG_member ] [msie_padding] [line 388, size 32, align 32, offset 1856] [from ngx_flag_t]
!1389 = metadata !{i32 786445, metadata !1317, metadata !"msie_refresh", metadata !1241, i32 389, i64 32, i64 32, i64 1888, i32 0, metadata !881} ; [ DW_TAG_member ] [msie_refresh] [line 389, size 32, align 32, offset 1888] [from ngx_flag_t]
!1390 = metadata !{i32 786445, metadata !1317, metadata !"log_not_found", metadata !1241, i32 390, i64 32, i64 32, i64 1920, i32 0, metadata !881} ; [ DW_TAG_member ] [log_not_found] [line 390, size 32, align 32, offset 1920] [from ngx_flag_t]
!1391 = metadata !{i32 786445, metadata !1317, metadata !"log_subrequest", metadata !1241, i32 391, i64 32, i64 32, i64 1952, i32 0, metadata !881} ; [ DW_TAG_member ] [log_subrequest] [line 391, size 32, align 32, offset 1952] [from ngx_flag_t]
!1392 = metadata !{i32 786445, metadata !1317, metadata !"recursive_error_pages", metadata !1241, i32 392, i64 32, i64 32, i64 1984, i32 0, metadata !881} ; [ DW_TAG_member ] [recursive_error_pages] [line 392, size 32, align 32, offset 1984] [from ngx_flag_t]
!1393 = metadata !{i32 786445, metadata !1317, metadata !"server_tokens", metadata !1241, i32 393, i64 32, i64 32, i64 2016, i32 0, metadata !881} ; [ DW_TAG_member ] [server_tokens] [line 393, size 32, align 32, offset 2016] [from ngx_flag_t]
!1394 = metadata !{i32 786445, metadata !1317, metadata !"chunked_transfer_encoding", metadata !1241, i32 394, i64 32, i64 32, i64 2048, i32 0, metadata !881} ; [ DW_TAG_member ] [chunked_transfer_encoding] [line 394, size 32, align 32, offset 2048] [from ngx_flag_t]
!1395 = metadata !{i32 786445, metadata !1317, metadata !"gzip_vary", metadata !1241, i32 397, i64 32, i64 32, i64 2080, i32 0, metadata !881} ; [ DW_TAG_member ] [gzip_vary] [line 397, size 32, align 32, offset 2080] [from ngx_flag_t]
!1396 = metadata !{i32 786445, metadata !1317, metadata !"gzip_http_version", metadata !1241, i32 399, i64 32, i64 32, i64 2112, i32 0, metadata !62} ; [ DW_TAG_member ] [gzip_http_version] [line 399, size 32, align 32, offset 2112] [from ngx_uint_t]
!1397 = metadata !{i32 786445, metadata !1317, metadata !"gzip_proxied", metadata !1241, i32 400, i64 32, i64 32, i64 2144, i32 0, metadata !62} ; [ DW_TAG_member ] [gzip_proxied] [line 400, size 32, align 32, offset 2144] [from ngx_uint_t]
!1398 = metadata !{i32 786445, metadata !1317, metadata !"gzip_disable", metadata !1241, i32 403, i64 32, i64 32, i64 2176, i32 0, metadata !765} ; [ DW_TAG_member ] [gzip_disable] [line 403, size 32, align 32, offset 2176] [from ]
!1399 = metadata !{i32 786445, metadata !1317, metadata !"disable_symlinks", metadata !1241, i32 408, i64 32, i64 32, i64 2208, i32 0, metadata !62} ; [ DW_TAG_member ] [disable_symlinks] [line 408, size 32, align 32, offset 2208] [from ngx_uint_t]
!1400 = metadata !{i32 786445, metadata !1317, metadata !"disable_symlinks_from", metadata !1241, i32 409, i64 32, i64 32, i64 2240, i32 0, metadata !1401} ; [ DW_TAG_member ] [disable_symlinks_from] [line 409, size 32, align 32, offset 2240] [from ]
!1401 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1402} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_complex_value_t]
!1402 = metadata !{i32 786454, null, metadata !"ngx_http_complex_value_t", metadata !1241, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !1403} ; [ DW_TAG_typedef ] [ngx_http_complex_value_t] [line 71, size 0, align 0, offset 0] [from ]
!1403 = metadata !{i32 786451, null, metadata !"", metadata !1404, i32 66, i64 160, i64 32, i32 0, i32 0, null, metadata !1405, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 66, size 160, align 32, offset 0] [from ]
!1404 = metadata !{i32 786473, metadata !"src/http/ngx_http_script.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1405 = metadata !{metadata !1406, metadata !1407, metadata !1409, metadata !1410}
!1406 = metadata !{i32 786445, metadata !1403, metadata !"value", metadata !1404, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [value] [line 67, size 64, align 32, offset 0] [from ngx_str_t]
!1407 = metadata !{i32 786445, metadata !1403, metadata !"flushes", metadata !1404, i32 68, i64 32, i64 32, i64 64, i32 0, metadata !1408} ; [ DW_TAG_member ] [flushes] [line 68, size 32, align 32, offset 64] [from ]
!1408 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_uint_t]
!1409 = metadata !{i32 786445, metadata !1403, metadata !"lengths", metadata !1404, i32 69, i64 32, i64 32, i64 96, i32 0, metadata !27} ; [ DW_TAG_member ] [lengths] [line 69, size 32, align 32, offset 96] [from ]
!1410 = metadata !{i32 786445, metadata !1403, metadata !"values", metadata !1404, i32 70, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [values] [line 70, size 32, align 32, offset 128] [from ]
!1411 = metadata !{i32 786445, metadata !1317, metadata !"error_pages", metadata !1241, i32 412, i64 32, i64 32, i64 2272, i32 0, metadata !765} ; [ DW_TAG_member ] [error_pages] [line 412, size 32, align 32, offset 2272] [from ]
!1412 = metadata !{i32 786445, metadata !1317, metadata !"try_files", metadata !1241, i32 413, i64 32, i64 32, i64 2304, i32 0, metadata !1413} ; [ DW_TAG_member ] [try_files] [line 413, size 32, align 32, offset 2304] [from ]
!1413 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1414} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_try_file_t]
!1414 = metadata !{i32 786454, null, metadata !"ngx_http_try_file_t", metadata !1241, i32 295, i64 0, i64 0, i64 0, i32 0, metadata !1415} ; [ DW_TAG_typedef ] [ngx_http_try_file_t] [line 295, size 0, align 0, offset 0] [from ]
!1415 = metadata !{i32 786451, null, metadata !"", metadata !1241, i32 288, i64 160, i64 32, i32 0, i32 0, null, metadata !1416, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 288, size 160, align 32, offset 0] [from ]
!1416 = metadata !{metadata !1417, metadata !1418, metadata !1419, metadata !1420, metadata !1421}
!1417 = metadata !{i32 786445, metadata !1415, metadata !"lengths", metadata !1241, i32 289, i64 32, i64 32, i64 0, i32 0, metadata !765} ; [ DW_TAG_member ] [lengths] [line 289, size 32, align 32, offset 0] [from ]
!1418 = metadata !{i32 786445, metadata !1415, metadata !"values", metadata !1241, i32 290, i64 32, i64 32, i64 32, i32 0, metadata !765} ; [ DW_TAG_member ] [values] [line 290, size 32, align 32, offset 32] [from ]
!1419 = metadata !{i32 786445, metadata !1415, metadata !"name", metadata !1241, i32 291, i64 64, i64 32, i64 64, i32 0, metadata !80} ; [ DW_TAG_member ] [name] [line 291, size 64, align 32, offset 64] [from ngx_str_t]
!1420 = metadata !{i32 786445, metadata !1415, metadata !"code", metadata !1241, i32 293, i64 10, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [code] [line 293, size 10, align 32, offset 128] [from unsigned int]
!1421 = metadata !{i32 786445, metadata !1415, metadata !"test_dir", metadata !1241, i32 294, i64 1, i64 32, i64 138, i32 0, metadata !19} ; [ DW_TAG_member ] [test_dir] [line 294, size 1, align 32, offset 138] [from unsigned int]
!1422 = metadata !{i32 786445, metadata !1317, metadata !"client_body_temp_path", metadata !1241, i32 415, i64 32, i64 32, i64 2336, i32 0, metadata !497} ; [ DW_TAG_member ] [client_body_temp_path] [line 415, size 32, align 32, offset 2336] [from ]
!1423 = metadata !{i32 786445, metadata !1317, metadata !"open_file_cache", metadata !1241, i32 417, i64 32, i64 32, i64 2368, i32 0, metadata !1424} ; [ DW_TAG_member ] [open_file_cache] [line 417, size 32, align 32, offset 2368] [from ]
!1424 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1425} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_cache_t]
!1425 = metadata !{i32 786454, null, metadata !"ngx_open_file_cache_t", metadata !1241, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !1426} ; [ DW_TAG_typedef ] [ngx_open_file_cache_t] [line 99, size 0, align 0, offset 0] [from ]
!1426 = metadata !{i32 786451, null, metadata !"", metadata !1427, i32 91, i64 416, i64 32, i32 0, i32 0, null, metadata !1428, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 91, size 416, align 32, offset 0] [from ]
!1427 = metadata !{i32 786473, metadata !"src/core/ngx_open_file_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1428 = metadata !{metadata !1429, metadata !1430, metadata !1431, metadata !1432, metadata !1433, metadata !1434}
!1429 = metadata !{i32 786445, metadata !1426, metadata !"rbtree", metadata !1427, i32 92, i64 96, i64 32, i64 0, i32 0, metadata !432} ; [ DW_TAG_member ] [rbtree] [line 92, size 96, align 32, offset 0] [from ngx_rbtree_t]
!1430 = metadata !{i32 786445, metadata !1426, metadata !"sentinel", metadata !1427, i32 93, i64 160, i64 32, i64 96, i32 0, metadata !109} ; [ DW_TAG_member ] [sentinel] [line 93, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!1431 = metadata !{i32 786445, metadata !1426, metadata !"expire_queue", metadata !1427, i32 94, i64 64, i64 32, i64 256, i32 0, metadata !347} ; [ DW_TAG_member ] [expire_queue] [line 94, size 64, align 32, offset 256] [from ngx_queue_t]
!1432 = metadata !{i32 786445, metadata !1426, metadata !"current", metadata !1427, i32 96, i64 32, i64 32, i64 320, i32 0, metadata !62} ; [ DW_TAG_member ] [current] [line 96, size 32, align 32, offset 320] [from ngx_uint_t]
!1433 = metadata !{i32 786445, metadata !1426, metadata !"max", metadata !1427, i32 97, i64 32, i64 32, i64 352, i32 0, metadata !62} ; [ DW_TAG_member ] [max] [line 97, size 32, align 32, offset 352] [from ngx_uint_t]
!1434 = metadata !{i32 786445, metadata !1426, metadata !"inactive", metadata !1427, i32 98, i64 32, i64 32, i64 384, i32 0, metadata !410} ; [ DW_TAG_member ] [inactive] [line 98, size 32, align 32, offset 384] [from time_t]
!1435 = metadata !{i32 786445, metadata !1317, metadata !"open_file_cache_valid", metadata !1241, i32 418, i64 32, i64 32, i64 2400, i32 0, metadata !410} ; [ DW_TAG_member ] [open_file_cache_valid] [line 418, size 32, align 32, offset 2400] [from time_t]
!1436 = metadata !{i32 786445, metadata !1317, metadata !"open_file_cache_min_uses", metadata !1241, i32 419, i64 32, i64 32, i64 2432, i32 0, metadata !62} ; [ DW_TAG_member ] [open_file_cache_min_uses] [line 419, size 32, align 32, offset 2432] [from ngx_uint_t]
!1437 = metadata !{i32 786445, metadata !1317, metadata !"open_file_cache_errors", metadata !1241, i32 420, i64 32, i64 32, i64 2464, i32 0, metadata !881} ; [ DW_TAG_member ] [open_file_cache_errors] [line 420, size 32, align 32, offset 2464] [from ngx_flag_t]
!1438 = metadata !{i32 786445, metadata !1317, metadata !"open_file_cache_events", metadata !1241, i32 421, i64 32, i64 32, i64 2496, i32 0, metadata !881} ; [ DW_TAG_member ] [open_file_cache_events] [line 421, size 32, align 32, offset 2496] [from ngx_flag_t]
!1439 = metadata !{i32 786445, metadata !1317, metadata !"error_log", metadata !1241, i32 423, i64 32, i64 32, i64 2528, i32 0, metadata !65} ; [ DW_TAG_member ] [error_log] [line 423, size 32, align 32, offset 2528] [from ]
!1440 = metadata !{i32 786445, metadata !1317, metadata !"types_hash_max_size", metadata !1241, i32 425, i64 32, i64 32, i64 2560, i32 0, metadata !62} ; [ DW_TAG_member ] [types_hash_max_size] [line 425, size 32, align 32, offset 2560] [from ngx_uint_t]
!1441 = metadata !{i32 786445, metadata !1317, metadata !"types_hash_bucket_size", metadata !1241, i32 426, i64 32, i64 32, i64 2592, i32 0, metadata !62} ; [ DW_TAG_member ] [types_hash_bucket_size] [line 426, size 32, align 32, offset 2592] [from ngx_uint_t]
!1442 = metadata !{i32 786445, metadata !1317, metadata !"locations", metadata !1241, i32 428, i64 32, i64 32, i64 2624, i32 0, metadata !352} ; [ DW_TAG_member ] [locations] [line 428, size 32, align 32, offset 2624] [from ]
!1443 = metadata !{i32 786445, metadata !1240, metadata !"name", metadata !1241, i32 276, i64 64, i64 32, i64 64, i32 0, metadata !80} ; [ DW_TAG_member ] [name] [line 276, size 64, align 32, offset 64] [from ngx_str_t]
!1444 = metadata !{i32 786445, metadata !14, metadata !"phase_handler", metadata !15, i32 408, i64 32, i64 32, i64 3776, i32 0, metadata !8} ; [ DW_TAG_member ] [phase_handler] [line 408, size 32, align 32, offset 3776] [from ngx_int_t]
!1445 = metadata !{i32 786445, metadata !14, metadata !"content_handler", metadata !15, i32 409, i64 32, i64 32, i64 3808, i32 0, metadata !1346} ; [ DW_TAG_member ] [content_handler] [line 409, size 32, align 32, offset 3808] [from ngx_http_handler_pt]
!1446 = metadata !{i32 786445, metadata !14, metadata !"access_code", metadata !15, i32 410, i64 32, i64 32, i64 3840, i32 0, metadata !62} ; [ DW_TAG_member ] [access_code] [line 410, size 32, align 32, offset 3840] [from ngx_uint_t]
!1447 = metadata !{i32 786445, metadata !14, metadata !"variables", metadata !15, i32 412, i64 32, i64 32, i64 3872, i32 0, metadata !1448} ; [ DW_TAG_member ] [variables] [line 412, size 32, align 32, offset 3872] [from ]
!1448 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1449} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_value_t]
!1449 = metadata !{i32 786454, null, metadata !"ngx_http_variable_value_t", metadata !15, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !1450} ; [ DW_TAG_typedef ] [ngx_http_variable_value_t] [line 17, size 0, align 0, offset 0] [from ngx_variable_value_t]
!1450 = metadata !{i32 786454, null, metadata !"ngx_variable_value_t", metadata !15, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !1451} ; [ DW_TAG_typedef ] [ngx_variable_value_t] [line 37, size 0, align 0, offset 0] [from ]
!1451 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 28, i64 64, i64 32, i32 0, i32 0, null, metadata !1452, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 28, size 64, align 32, offset 0] [from ]
!1452 = metadata !{metadata !1453, metadata !1454, metadata !1455, metadata !1456, metadata !1457, metadata !1458}
!1453 = metadata !{i32 786445, metadata !1451, metadata !"len", metadata !82, i32 29, i64 28, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [len] [line 29, size 28, align 32, offset 0] [from unsigned int]
!1454 = metadata !{i32 786445, metadata !1451, metadata !"valid", metadata !82, i32 31, i64 1, i64 32, i64 28, i32 0, metadata !19} ; [ DW_TAG_member ] [valid] [line 31, size 1, align 32, offset 28] [from unsigned int]
!1455 = metadata !{i32 786445, metadata !1451, metadata !"no_cacheable", metadata !82, i32 32, i64 1, i64 32, i64 29, i32 0, metadata !19} ; [ DW_TAG_member ] [no_cacheable] [line 32, size 1, align 32, offset 29] [from unsigned int]
!1456 = metadata !{i32 786445, metadata !1451, metadata !"not_found", metadata !82, i32 33, i64 1, i64 32, i64 30, i32 0, metadata !19} ; [ DW_TAG_member ] [not_found] [line 33, size 1, align 32, offset 30] [from unsigned int]
!1457 = metadata !{i32 786445, metadata !1451, metadata !"escape", metadata !82, i32 34, i64 1, i64 32, i64 31, i32 0, metadata !19} ; [ DW_TAG_member ] [escape] [line 34, size 1, align 32, offset 31] [from unsigned int]
!1458 = metadata !{i32 786445, metadata !1451, metadata !"data", metadata !82, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !87} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!1459 = metadata !{i32 786445, metadata !14, metadata !"ncaptures", metadata !15, i32 415, i64 32, i64 32, i64 3904, i32 0, metadata !62} ; [ DW_TAG_member ] [ncaptures] [line 415, size 32, align 32, offset 3904] [from ngx_uint_t]
!1460 = metadata !{i32 786445, metadata !14, metadata !"captures", metadata !15, i32 416, i64 32, i64 32, i64 3936, i32 0, metadata !1461} ; [ DW_TAG_member ] [captures] [line 416, size 32, align 32, offset 3936] [from ]
!1461 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!1462 = metadata !{i32 786445, metadata !14, metadata !"captures_data", metadata !15, i32 417, i64 32, i64 32, i64 3968, i32 0, metadata !87} ; [ DW_TAG_member ] [captures_data] [line 417, size 32, align 32, offset 3968] [from ]
!1463 = metadata !{i32 786445, metadata !14, metadata !"limit_rate", metadata !15, i32 420, i64 32, i64 32, i64 4000, i32 0, metadata !85} ; [ DW_TAG_member ] [limit_rate] [line 420, size 32, align 32, offset 4000] [from size_t]
!1464 = metadata !{i32 786445, metadata !14, metadata !"header_size", metadata !15, i32 423, i64 32, i64 32, i64 4032, i32 0, metadata !85} ; [ DW_TAG_member ] [header_size] [line 423, size 32, align 32, offset 4032] [from size_t]
!1465 = metadata !{i32 786445, metadata !14, metadata !"request_length", metadata !15, i32 425, i64 64, i64 32, i64 4064, i32 0, metadata !160} ; [ DW_TAG_member ] [request_length] [line 425, size 64, align 32, offset 4064] [from off_t]
!1466 = metadata !{i32 786445, metadata !14, metadata !"err_status", metadata !15, i32 427, i64 32, i64 32, i64 4128, i32 0, metadata !62} ; [ DW_TAG_member ] [err_status] [line 427, size 32, align 32, offset 4128] [from ngx_uint_t]
!1467 = metadata !{i32 786445, metadata !14, metadata !"http_connection", metadata !15, i32 429, i64 32, i64 32, i64 4160, i32 0, metadata !1468} ; [ DW_TAG_member ] [http_connection] [line 429, size 32, align 32, offset 4160] [from ]
!1468 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1469} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_connection_t]
!1469 = metadata !{i32 786454, null, metadata !"ngx_http_connection_t", metadata !15, i32 299, i64 0, i64 0, i64 0, i32 0, metadata !1470} ; [ DW_TAG_typedef ] [ngx_http_connection_t] [line 299, size 0, align 0, offset 0] [from ]
!1470 = metadata !{i32 786451, null, metadata !"", metadata !15, i32 289, i64 192, i64 32, i32 0, i32 0, null, metadata !1471, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 289, size 192, align 32, offset 0] [from ]
!1471 = metadata !{metadata !1472, metadata !1473, metadata !1475, metadata !1476, metadata !1477, metadata !1478}
!1472 = metadata !{i32 786445, metadata !1470, metadata !"request", metadata !15, i32 290, i64 32, i64 32, i64 0, i32 0, metadata !381} ; [ DW_TAG_member ] [request] [line 290, size 32, align 32, offset 0] [from ]
!1473 = metadata !{i32 786445, metadata !1470, metadata !"busy", metadata !15, i32 292, i64 32, i64 32, i64 32, i32 0, metadata !1474} ; [ DW_TAG_member ] [busy] [line 292, size 32, align 32, offset 32] [from ]
!1474 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !153} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1475 = metadata !{i32 786445, metadata !1470, metadata !"nbusy", metadata !15, i32 293, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [nbusy] [line 293, size 32, align 32, offset 64] [from ngx_int_t]
!1476 = metadata !{i32 786445, metadata !1470, metadata !"free", metadata !15, i32 295, i64 32, i64 32, i64 96, i32 0, metadata !1474} ; [ DW_TAG_member ] [free] [line 295, size 32, align 32, offset 96] [from ]
!1477 = metadata !{i32 786445, metadata !1470, metadata !"nfree", metadata !15, i32 296, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [nfree] [line 296, size 32, align 32, offset 128] [from ngx_int_t]
!1478 = metadata !{i32 786445, metadata !1470, metadata !"pipeline", metadata !15, i32 298, i64 32, i64 32, i64 160, i32 0, metadata !62} ; [ DW_TAG_member ] [pipeline] [line 298, size 32, align 32, offset 160] [from ngx_uint_t]
!1479 = metadata !{i32 786445, metadata !14, metadata !"log_handler", metadata !15, i32 431, i64 32, i64 32, i64 4192, i32 0, metadata !1480} ; [ DW_TAG_member ] [log_handler] [line 431, size 32, align 32, offset 4192] [from ngx_http_log_handler_pt]
!1480 = metadata !{i32 786454, null, metadata !"ngx_http_log_handler_pt", metadata !15, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !1481} ; [ DW_TAG_typedef ] [ngx_http_log_handler_pt] [line 24, size 0, align 0, offset 0] [from ]
!1481 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1482} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1482 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1483, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1483 = metadata !{metadata !87, metadata !381, metadata !381, metadata !87, metadata !85}
!1484 = metadata !{i32 786445, metadata !14, metadata !"cleanup", metadata !15, i32 433, i64 32, i64 32, i64 4224, i32 0, metadata !1485} ; [ DW_TAG_member ] [cleanup] [line 433, size 32, align 32, offset 4224] [from ]
!1485 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1486} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_t]
!1486 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_t", metadata !15, i32 315, i64 0, i64 0, i64 0, i32 0, metadata !1487} ; [ DW_TAG_typedef ] [ngx_http_cleanup_t] [line 315, size 0, align 0, offset 0] [from ngx_http_cleanup_s]
!1487 = metadata !{i32 786451, null, metadata !"ngx_http_cleanup_s", metadata !15, i32 317, i64 96, i64 32, i32 0, i32 0, null, metadata !1488, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cleanup_s] [line 317, size 96, align 32, offset 0] [from ]
!1488 = metadata !{metadata !1489, metadata !1490, metadata !1491}
!1489 = metadata !{i32 786445, metadata !1487, metadata !"handler", metadata !15, i32 318, i64 32, i64 32, i64 0, i32 0, metadata !1087} ; [ DW_TAG_member ] [handler] [line 318, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1490 = metadata !{i32 786445, metadata !1487, metadata !"data", metadata !15, i32 319, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 319, size 32, align 32, offset 32] [from ]
!1491 = metadata !{i32 786445, metadata !1487, metadata !"next", metadata !15, i32 320, i64 32, i64 32, i64 64, i32 0, metadata !1485} ; [ DW_TAG_member ] [next] [line 320, size 32, align 32, offset 64] [from ]
!1492 = metadata !{i32 786445, metadata !14, metadata !"subrequests", metadata !15, i32 435, i64 8, i64 32, i64 4256, i32 0, metadata !19} ; [ DW_TAG_member ] [subrequests] [line 435, size 8, align 32, offset 4256] [from unsigned int]
!1493 = metadata !{i32 786445, metadata !14, metadata !"count", metadata !15, i32 436, i64 8, i64 32, i64 4264, i32 0, metadata !19} ; [ DW_TAG_member ] [count] [line 436, size 8, align 32, offset 4264] [from unsigned int]
!1494 = metadata !{i32 786445, metadata !14, metadata !"blocked", metadata !15, i32 437, i64 8, i64 32, i64 4272, i32 0, metadata !19} ; [ DW_TAG_member ] [blocked] [line 437, size 8, align 32, offset 4272] [from unsigned int]
!1495 = metadata !{i32 786445, metadata !14, metadata !"aio", metadata !15, i32 439, i64 1, i64 32, i64 4280, i32 0, metadata !19} ; [ DW_TAG_member ] [aio] [line 439, size 1, align 32, offset 4280] [from unsigned int]
!1496 = metadata !{i32 786445, metadata !14, metadata !"http_state", metadata !15, i32 441, i64 4, i64 32, i64 4281, i32 0, metadata !19} ; [ DW_TAG_member ] [http_state] [line 441, size 4, align 32, offset 4281] [from unsigned int]
!1497 = metadata !{i32 786445, metadata !14, metadata !"complex_uri", metadata !15, i32 444, i64 1, i64 32, i64 4285, i32 0, metadata !19} ; [ DW_TAG_member ] [complex_uri] [line 444, size 1, align 32, offset 4285] [from unsigned int]
!1498 = metadata !{i32 786445, metadata !14, metadata !"quoted_uri", metadata !15, i32 447, i64 1, i64 32, i64 4286, i32 0, metadata !19} ; [ DW_TAG_member ] [quoted_uri] [line 447, size 1, align 32, offset 4286] [from unsigned int]
!1499 = metadata !{i32 786445, metadata !14, metadata !"plus_in_uri", metadata !15, i32 450, i64 1, i64 32, i64 4287, i32 0, metadata !19} ; [ DW_TAG_member ] [plus_in_uri] [line 450, size 1, align 32, offset 4287] [from unsigned int]
!1500 = metadata !{i32 786445, metadata !14, metadata !"space_in_uri", metadata !15, i32 453, i64 1, i64 32, i64 4288, i32 0, metadata !19} ; [ DW_TAG_member ] [space_in_uri] [line 453, size 1, align 32, offset 4288] [from unsigned int]
!1501 = metadata !{i32 786445, metadata !14, metadata !"invalid_header", metadata !15, i32 455, i64 1, i64 32, i64 4289, i32 0, metadata !19} ; [ DW_TAG_member ] [invalid_header] [line 455, size 1, align 32, offset 4289] [from unsigned int]
!1502 = metadata !{i32 786445, metadata !14, metadata !"add_uri_to_alias", metadata !15, i32 457, i64 1, i64 32, i64 4290, i32 0, metadata !19} ; [ DW_TAG_member ] [add_uri_to_alias] [line 457, size 1, align 32, offset 4290] [from unsigned int]
!1503 = metadata !{i32 786445, metadata !14, metadata !"valid_location", metadata !15, i32 458, i64 1, i64 32, i64 4291, i32 0, metadata !19} ; [ DW_TAG_member ] [valid_location] [line 458, size 1, align 32, offset 4291] [from unsigned int]
!1504 = metadata !{i32 786445, metadata !14, metadata !"valid_unparsed_uri", metadata !15, i32 459, i64 1, i64 32, i64 4292, i32 0, metadata !19} ; [ DW_TAG_member ] [valid_unparsed_uri] [line 459, size 1, align 32, offset 4292] [from unsigned int]
!1505 = metadata !{i32 786445, metadata !14, metadata !"uri_changed", metadata !15, i32 460, i64 1, i64 32, i64 4293, i32 0, metadata !19} ; [ DW_TAG_member ] [uri_changed] [line 460, size 1, align 32, offset 4293] [from unsigned int]
!1506 = metadata !{i32 786445, metadata !14, metadata !"uri_changes", metadata !15, i32 461, i64 4, i64 32, i64 4294, i32 0, metadata !19} ; [ DW_TAG_member ] [uri_changes] [line 461, size 4, align 32, offset 4294] [from unsigned int]
!1507 = metadata !{i32 786445, metadata !14, metadata !"request_body_in_single_buf", metadata !15, i32 463, i64 1, i64 32, i64 4298, i32 0, metadata !19} ; [ DW_TAG_member ] [request_body_in_single_buf] [line 463, size 1, align 32, offset 4298] [from unsigned int]
!1508 = metadata !{i32 786445, metadata !14, metadata !"request_body_in_file_only", metadata !15, i32 464, i64 1, i64 32, i64 4299, i32 0, metadata !19} ; [ DW_TAG_member ] [request_body_in_file_only] [line 464, size 1, align 32, offset 4299] [from unsigned int]
!1509 = metadata !{i32 786445, metadata !14, metadata !"request_body_in_persistent_file", metadata !15, i32 465, i64 1, i64 32, i64 4300, i32 0, metadata !19} ; [ DW_TAG_member ] [request_body_in_persistent_file] [line 465, size 1, align 32, offset 4300] [from unsigned int]
!1510 = metadata !{i32 786445, metadata !14, metadata !"request_body_in_clean_file", metadata !15, i32 466, i64 1, i64 32, i64 4301, i32 0, metadata !19} ; [ DW_TAG_member ] [request_body_in_clean_file] [line 466, size 1, align 32, offset 4301] [from unsigned int]
!1511 = metadata !{i32 786445, metadata !14, metadata !"request_body_file_group_access", metadata !15, i32 467, i64 1, i64 32, i64 4302, i32 0, metadata !19} ; [ DW_TAG_member ] [request_body_file_group_access] [line 467, size 1, align 32, offset 4302] [from unsigned int]
!1512 = metadata !{i32 786445, metadata !14, metadata !"request_body_file_log_level", metadata !15, i32 468, i64 3, i64 32, i64 4303, i32 0, metadata !19} ; [ DW_TAG_member ] [request_body_file_log_level] [line 468, size 3, align 32, offset 4303] [from unsigned int]
!1513 = metadata !{i32 786445, metadata !14, metadata !"subrequest_in_memory", metadata !15, i32 470, i64 1, i64 32, i64 4306, i32 0, metadata !19} ; [ DW_TAG_member ] [subrequest_in_memory] [line 470, size 1, align 32, offset 4306] [from unsigned int]
!1514 = metadata !{i32 786445, metadata !14, metadata !"waited", metadata !15, i32 471, i64 1, i64 32, i64 4307, i32 0, metadata !19} ; [ DW_TAG_member ] [waited] [line 471, size 1, align 32, offset 4307] [from unsigned int]
!1515 = metadata !{i32 786445, metadata !14, metadata !"cached", metadata !15, i32 474, i64 1, i64 32, i64 4308, i32 0, metadata !19} ; [ DW_TAG_member ] [cached] [line 474, size 1, align 32, offset 4308] [from unsigned int]
!1516 = metadata !{i32 786445, metadata !14, metadata !"gzip_tested", metadata !15, i32 478, i64 1, i64 32, i64 4309, i32 0, metadata !19} ; [ DW_TAG_member ] [gzip_tested] [line 478, size 1, align 32, offset 4309] [from unsigned int]
!1517 = metadata !{i32 786445, metadata !14, metadata !"gzip_ok", metadata !15, i32 479, i64 1, i64 32, i64 4310, i32 0, metadata !19} ; [ DW_TAG_member ] [gzip_ok] [line 479, size 1, align 32, offset 4310] [from unsigned int]
!1518 = metadata !{i32 786445, metadata !14, metadata !"gzip_vary", metadata !15, i32 480, i64 1, i64 32, i64 4311, i32 0, metadata !19} ; [ DW_TAG_member ] [gzip_vary] [line 480, size 1, align 32, offset 4311] [from unsigned int]
!1519 = metadata !{i32 786445, metadata !14, metadata !"proxy", metadata !15, i32 483, i64 1, i64 32, i64 4312, i32 0, metadata !19} ; [ DW_TAG_member ] [proxy] [line 483, size 1, align 32, offset 4312] [from unsigned int]
!1520 = metadata !{i32 786445, metadata !14, metadata !"bypass_cache", metadata !15, i32 484, i64 1, i64 32, i64 4313, i32 0, metadata !19} ; [ DW_TAG_member ] [bypass_cache] [line 484, size 1, align 32, offset 4313] [from unsigned int]
!1521 = metadata !{i32 786445, metadata !14, metadata !"no_cache", metadata !15, i32 485, i64 1, i64 32, i64 4314, i32 0, metadata !19} ; [ DW_TAG_member ] [no_cache] [line 485, size 1, align 32, offset 4314] [from unsigned int]
!1522 = metadata !{i32 786445, metadata !14, metadata !"limit_conn_set", metadata !15, i32 492, i64 1, i64 32, i64 4315, i32 0, metadata !19} ; [ DW_TAG_member ] [limit_conn_set] [line 492, size 1, align 32, offset 4315] [from unsigned int]
!1523 = metadata !{i32 786445, metadata !14, metadata !"limit_req_set", metadata !15, i32 493, i64 1, i64 32, i64 4316, i32 0, metadata !19} ; [ DW_TAG_member ] [limit_req_set] [line 493, size 1, align 32, offset 4316] [from unsigned int]
!1524 = metadata !{i32 786445, metadata !14, metadata !"pipeline", metadata !15, i32 499, i64 1, i64 32, i64 4317, i32 0, metadata !19} ; [ DW_TAG_member ] [pipeline] [line 499, size 1, align 32, offset 4317] [from unsigned int]
!1525 = metadata !{i32 786445, metadata !14, metadata !"plain_http", metadata !15, i32 500, i64 1, i64 32, i64 4318, i32 0, metadata !19} ; [ DW_TAG_member ] [plain_http] [line 500, size 1, align 32, offset 4318] [from unsigned int]
!1526 = metadata !{i32 786445, metadata !14, metadata !"chunked", metadata !15, i32 501, i64 1, i64 32, i64 4319, i32 0, metadata !19} ; [ DW_TAG_member ] [chunked] [line 501, size 1, align 32, offset 4319] [from unsigned int]
!1527 = metadata !{i32 786445, metadata !14, metadata !"header_only", metadata !15, i32 502, i64 1, i64 32, i64 4320, i32 0, metadata !19} ; [ DW_TAG_member ] [header_only] [line 502, size 1, align 32, offset 4320] [from unsigned int]
!1528 = metadata !{i32 786445, metadata !14, metadata !"keepalive", metadata !15, i32 503, i64 1, i64 32, i64 4321, i32 0, metadata !19} ; [ DW_TAG_member ] [keepalive] [line 503, size 1, align 32, offset 4321] [from unsigned int]
!1529 = metadata !{i32 786445, metadata !14, metadata !"lingering_close", metadata !15, i32 504, i64 1, i64 32, i64 4322, i32 0, metadata !19} ; [ DW_TAG_member ] [lingering_close] [line 504, size 1, align 32, offset 4322] [from unsigned int]
!1530 = metadata !{i32 786445, metadata !14, metadata !"discard_body", metadata !15, i32 505, i64 1, i64 32, i64 4323, i32 0, metadata !19} ; [ DW_TAG_member ] [discard_body] [line 505, size 1, align 32, offset 4323] [from unsigned int]
!1531 = metadata !{i32 786445, metadata !14, metadata !"internal", metadata !15, i32 506, i64 1, i64 32, i64 4324, i32 0, metadata !19} ; [ DW_TAG_member ] [internal] [line 506, size 1, align 32, offset 4324] [from unsigned int]
!1532 = metadata !{i32 786445, metadata !14, metadata !"error_page", metadata !15, i32 507, i64 1, i64 32, i64 4325, i32 0, metadata !19} ; [ DW_TAG_member ] [error_page] [line 507, size 1, align 32, offset 4325] [from unsigned int]
!1533 = metadata !{i32 786445, metadata !14, metadata !"ignore_content_encoding", metadata !15, i32 508, i64 1, i64 32, i64 4326, i32 0, metadata !19} ; [ DW_TAG_member ] [ignore_content_encoding] [line 508, size 1, align 32, offset 4326] [from unsigned int]
!1534 = metadata !{i32 786445, metadata !14, metadata !"filter_finalize", metadata !15, i32 509, i64 1, i64 32, i64 4327, i32 0, metadata !19} ; [ DW_TAG_member ] [filter_finalize] [line 509, size 1, align 32, offset 4327] [from unsigned int]
!1535 = metadata !{i32 786445, metadata !14, metadata !"post_action", metadata !15, i32 510, i64 1, i64 32, i64 4328, i32 0, metadata !19} ; [ DW_TAG_member ] [post_action] [line 510, size 1, align 32, offset 4328] [from unsigned int]
!1536 = metadata !{i32 786445, metadata !14, metadata !"request_complete", metadata !15, i32 511, i64 1, i64 32, i64 4329, i32 0, metadata !19} ; [ DW_TAG_member ] [request_complete] [line 511, size 1, align 32, offset 4329] [from unsigned int]
!1537 = metadata !{i32 786445, metadata !14, metadata !"request_output", metadata !15, i32 512, i64 1, i64 32, i64 4330, i32 0, metadata !19} ; [ DW_TAG_member ] [request_output] [line 512, size 1, align 32, offset 4330] [from unsigned int]
!1538 = metadata !{i32 786445, metadata !14, metadata !"header_sent", metadata !15, i32 513, i64 1, i64 32, i64 4331, i32 0, metadata !19} ; [ DW_TAG_member ] [header_sent] [line 513, size 1, align 32, offset 4331] [from unsigned int]
!1539 = metadata !{i32 786445, metadata !14, metadata !"expect_tested", metadata !15, i32 514, i64 1, i64 32, i64 4332, i32 0, metadata !19} ; [ DW_TAG_member ] [expect_tested] [line 514, size 1, align 32, offset 4332] [from unsigned int]
!1540 = metadata !{i32 786445, metadata !14, metadata !"root_tested", metadata !15, i32 515, i64 1, i64 32, i64 4333, i32 0, metadata !19} ; [ DW_TAG_member ] [root_tested] [line 515, size 1, align 32, offset 4333] [from unsigned int]
!1541 = metadata !{i32 786445, metadata !14, metadata !"done", metadata !15, i32 516, i64 1, i64 32, i64 4334, i32 0, metadata !19} ; [ DW_TAG_member ] [done] [line 516, size 1, align 32, offset 4334] [from unsigned int]
!1542 = metadata !{i32 786445, metadata !14, metadata !"logged", metadata !15, i32 517, i64 1, i64 32, i64 4335, i32 0, metadata !19} ; [ DW_TAG_member ] [logged] [line 517, size 1, align 32, offset 4335] [from unsigned int]
!1543 = metadata !{i32 786445, metadata !14, metadata !"buffered", metadata !15, i32 519, i64 4, i64 32, i64 4336, i32 0, metadata !19} ; [ DW_TAG_member ] [buffered] [line 519, size 4, align 32, offset 4336] [from unsigned int]
!1544 = metadata !{i32 786445, metadata !14, metadata !"main_filter_need_in_memory", metadata !15, i32 521, i64 1, i64 32, i64 4340, i32 0, metadata !19} ; [ DW_TAG_member ] [main_filter_need_in_memory] [line 521, size 1, align 32, offset 4340] [from unsigned int]
!1545 = metadata !{i32 786445, metadata !14, metadata !"filter_need_in_memory", metadata !15, i32 522, i64 1, i64 32, i64 4341, i32 0, metadata !19} ; [ DW_TAG_member ] [filter_need_in_memory] [line 522, size 1, align 32, offset 4341] [from unsigned int]
!1546 = metadata !{i32 786445, metadata !14, metadata !"filter_need_temporary", metadata !15, i32 523, i64 1, i64 32, i64 4342, i32 0, metadata !19} ; [ DW_TAG_member ] [filter_need_temporary] [line 523, size 1, align 32, offset 4342] [from unsigned int]
!1547 = metadata !{i32 786445, metadata !14, metadata !"allow_ranges", metadata !15, i32 524, i64 1, i64 32, i64 4343, i32 0, metadata !19} ; [ DW_TAG_member ] [allow_ranges] [line 524, size 1, align 32, offset 4343] [from unsigned int]
!1548 = metadata !{i32 786445, metadata !14, metadata !"state", metadata !15, i32 533, i64 32, i64 32, i64 4352, i32 0, metadata !62} ; [ DW_TAG_member ] [state] [line 533, size 32, align 32, offset 4352] [from ngx_uint_t]
!1549 = metadata !{i32 786445, metadata !14, metadata !"header_hash", metadata !15, i32 535, i64 32, i64 32, i64 4384, i32 0, metadata !62} ; [ DW_TAG_member ] [header_hash] [line 535, size 32, align 32, offset 4384] [from ngx_uint_t]
!1550 = metadata !{i32 786445, metadata !14, metadata !"lowcase_index", metadata !15, i32 536, i64 32, i64 32, i64 4416, i32 0, metadata !62} ; [ DW_TAG_member ] [lowcase_index] [line 536, size 32, align 32, offset 4416] [from ngx_uint_t]
!1551 = metadata !{i32 786445, metadata !14, metadata !"lowcase_header", metadata !15, i32 537, i64 256, i64 8, i64 4448, i32 0, metadata !1552} ; [ DW_TAG_member ] [lowcase_header] [line 537, size 256, align 8, offset 4448] [from ]
!1552 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !88, metadata !1553, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from u_char]
!1553 = metadata !{metadata !1554}
!1554 = metadata !{i32 786465, i64 0, i64 31}     ; [ DW_TAG_subrange_type ] [0, 31]
!1555 = metadata !{i32 786445, metadata !14, metadata !"header_name_start", metadata !15, i32 539, i64 32, i64 32, i64 4704, i32 0, metadata !87} ; [ DW_TAG_member ] [header_name_start] [line 539, size 32, align 32, offset 4704] [from ]
!1556 = metadata !{i32 786445, metadata !14, metadata !"header_name_end", metadata !15, i32 540, i64 32, i64 32, i64 4736, i32 0, metadata !87} ; [ DW_TAG_member ] [header_name_end] [line 540, size 32, align 32, offset 4736] [from ]
!1557 = metadata !{i32 786445, metadata !14, metadata !"header_start", metadata !15, i32 541, i64 32, i64 32, i64 4768, i32 0, metadata !87} ; [ DW_TAG_member ] [header_start] [line 541, size 32, align 32, offset 4768] [from ]
!1558 = metadata !{i32 786445, metadata !14, metadata !"header_end", metadata !15, i32 542, i64 32, i64 32, i64 4800, i32 0, metadata !87} ; [ DW_TAG_member ] [header_end] [line 542, size 32, align 32, offset 4800] [from ]
!1559 = metadata !{i32 786445, metadata !14, metadata !"uri_start", metadata !15, i32 549, i64 32, i64 32, i64 4832, i32 0, metadata !87} ; [ DW_TAG_member ] [uri_start] [line 549, size 32, align 32, offset 4832] [from ]
!1560 = metadata !{i32 786445, metadata !14, metadata !"uri_end", metadata !15, i32 550, i64 32, i64 32, i64 4864, i32 0, metadata !87} ; [ DW_TAG_member ] [uri_end] [line 550, size 32, align 32, offset 4864] [from ]
!1561 = metadata !{i32 786445, metadata !14, metadata !"uri_ext", metadata !15, i32 551, i64 32, i64 32, i64 4896, i32 0, metadata !87} ; [ DW_TAG_member ] [uri_ext] [line 551, size 32, align 32, offset 4896] [from ]
!1562 = metadata !{i32 786445, metadata !14, metadata !"args_start", metadata !15, i32 552, i64 32, i64 32, i64 4928, i32 0, metadata !87} ; [ DW_TAG_member ] [args_start] [line 552, size 32, align 32, offset 4928] [from ]
!1563 = metadata !{i32 786445, metadata !14, metadata !"request_start", metadata !15, i32 553, i64 32, i64 32, i64 4960, i32 0, metadata !87} ; [ DW_TAG_member ] [request_start] [line 553, size 32, align 32, offset 4960] [from ]
!1564 = metadata !{i32 786445, metadata !14, metadata !"request_end", metadata !15, i32 554, i64 32, i64 32, i64 4992, i32 0, metadata !87} ; [ DW_TAG_member ] [request_end] [line 554, size 32, align 32, offset 4992] [from ]
!1565 = metadata !{i32 786445, metadata !14, metadata !"method_end", metadata !15, i32 555, i64 32, i64 32, i64 5024, i32 0, metadata !87} ; [ DW_TAG_member ] [method_end] [line 555, size 32, align 32, offset 5024] [from ]
!1566 = metadata !{i32 786445, metadata !14, metadata !"schema_start", metadata !15, i32 556, i64 32, i64 32, i64 5056, i32 0, metadata !87} ; [ DW_TAG_member ] [schema_start] [line 556, size 32, align 32, offset 5056] [from ]
!1567 = metadata !{i32 786445, metadata !14, metadata !"schema_end", metadata !15, i32 557, i64 32, i64 32, i64 5088, i32 0, metadata !87} ; [ DW_TAG_member ] [schema_end] [line 557, size 32, align 32, offset 5088] [from ]
!1568 = metadata !{i32 786445, metadata !14, metadata !"host_start", metadata !15, i32 558, i64 32, i64 32, i64 5120, i32 0, metadata !87} ; [ DW_TAG_member ] [host_start] [line 558, size 32, align 32, offset 5120] [from ]
!1569 = metadata !{i32 786445, metadata !14, metadata !"host_end", metadata !15, i32 559, i64 32, i64 32, i64 5152, i32 0, metadata !87} ; [ DW_TAG_member ] [host_end] [line 559, size 32, align 32, offset 5152] [from ]
!1570 = metadata !{i32 786445, metadata !14, metadata !"port_start", metadata !15, i32 560, i64 32, i64 32, i64 5184, i32 0, metadata !87} ; [ DW_TAG_member ] [port_start] [line 560, size 32, align 32, offset 5184] [from ]
!1571 = metadata !{i32 786445, metadata !14, metadata !"port_end", metadata !15, i32 561, i64 32, i64 32, i64 5216, i32 0, metadata !87} ; [ DW_TAG_member ] [port_end] [line 561, size 32, align 32, offset 5216] [from ]
!1572 = metadata !{i32 786445, metadata !14, metadata !"http_minor", metadata !15, i32 563, i64 16, i64 32, i64 5248, i32 0, metadata !19} ; [ DW_TAG_member ] [http_minor] [line 563, size 16, align 32, offset 5248] [from unsigned int]
!1573 = metadata !{i32 786445, metadata !14, metadata !"http_major", metadata !15, i32 564, i64 16, i64 32, i64 5264, i32 0, metadata !19} ; [ DW_TAG_member ] [http_major] [line 564, size 16, align 32, offset 5264] [from unsigned int]
!1574 = metadata !{metadata !1575}
!1575 = metadata !{metadata !1576, metadata !1577, metadata !1578, metadata !1580, metadata !1581, metadata !1582, metadata !1583}
!1576 = metadata !{i32 786689, metadata !4, metadata !"r", metadata !5, i32 16777287, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 71]
!1577 = metadata !{i32 786689, metadata !4, metadata !"b", metadata !5, i32 33554503, metadata !153, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 71]
!1578 = metadata !{i32 786688, metadata !1579, metadata !"c", metadata !5, i32 73, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 73]
!1579 = metadata !{i32 786443, metadata !4, i32 72, i32 0, metadata !5, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1580 = metadata !{i32 786688, metadata !1579, metadata !"ch", metadata !5, i32 74, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 74]
!1581 = metadata !{i32 786688, metadata !1579, metadata !"p", metadata !5, i32 75, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 75]
!1582 = metadata !{i32 786688, metadata !1579, metadata !"m", metadata !5, i32 76, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 76]
!1583 = metadata !{i32 786688, metadata !1579, metadata !"state", metadata !5, i32 77, metadata !3, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [state] [line 77]
!1584 = metadata !{metadata !1585, metadata !1586, metadata !1587, metadata !1588, metadata !1589, metadata !1590, metadata !1591, metadata !1592, metadata !1593, metadata !1594, metadata !1595, metadata !1596, metadata !1597, metadata !1598, metadata !1599, metadata !1600, metadata !1601, metadata !1602, metadata !1603, metadata !1604, metadata !1605, metadata !1606, metadata !1607, metadata !1608, metadata !1609, metadata !1610, metadata !1611}
!1585 = metadata !{i32 786472, metadata !"sw_start", i64 0} ; [ DW_TAG_enumerator ] [sw_start :: 0]
!1586 = metadata !{i32 786472, metadata !"sw_method", i64 1} ; [ DW_TAG_enumerator ] [sw_method :: 1]
!1587 = metadata !{i32 786472, metadata !"sw_spaces_before_uri", i64 2} ; [ DW_TAG_enumerator ] [sw_spaces_before_uri :: 2]
!1588 = metadata !{i32 786472, metadata !"sw_schema", i64 3} ; [ DW_TAG_enumerator ] [sw_schema :: 3]
!1589 = metadata !{i32 786472, metadata !"sw_schema_slash", i64 4} ; [ DW_TAG_enumerator ] [sw_schema_slash :: 4]
!1590 = metadata !{i32 786472, metadata !"sw_schema_slash_slash", i64 5} ; [ DW_TAG_enumerator ] [sw_schema_slash_slash :: 5]
!1591 = metadata !{i32 786472, metadata !"sw_host_start", i64 6} ; [ DW_TAG_enumerator ] [sw_host_start :: 6]
!1592 = metadata !{i32 786472, metadata !"sw_host", i64 7} ; [ DW_TAG_enumerator ] [sw_host :: 7]
!1593 = metadata !{i32 786472, metadata !"sw_host_end", i64 8} ; [ DW_TAG_enumerator ] [sw_host_end :: 8]
!1594 = metadata !{i32 786472, metadata !"sw_host_ip_literal", i64 9} ; [ DW_TAG_enumerator ] [sw_host_ip_literal :: 9]
!1595 = metadata !{i32 786472, metadata !"sw_port", i64 10} ; [ DW_TAG_enumerator ] [sw_port :: 10]
!1596 = metadata !{i32 786472, metadata !"sw_host_http_09", i64 11} ; [ DW_TAG_enumerator ] [sw_host_http_09 :: 11]
!1597 = metadata !{i32 786472, metadata !"sw_after_slash_in_uri", i64 12} ; [ DW_TAG_enumerator ] [sw_after_slash_in_uri :: 12]
!1598 = metadata !{i32 786472, metadata !"sw_check_uri", i64 13} ; [ DW_TAG_enumerator ] [sw_check_uri :: 13]
!1599 = metadata !{i32 786472, metadata !"sw_check_uri_http_09", i64 14} ; [ DW_TAG_enumerator ] [sw_check_uri_http_09 :: 14]
!1600 = metadata !{i32 786472, metadata !"sw_uri", i64 15} ; [ DW_TAG_enumerator ] [sw_uri :: 15]
!1601 = metadata !{i32 786472, metadata !"sw_http_09", i64 16} ; [ DW_TAG_enumerator ] [sw_http_09 :: 16]
!1602 = metadata !{i32 786472, metadata !"sw_http_H", i64 17} ; [ DW_TAG_enumerator ] [sw_http_H :: 17]
!1603 = metadata !{i32 786472, metadata !"sw_http_HT", i64 18} ; [ DW_TAG_enumerator ] [sw_http_HT :: 18]
!1604 = metadata !{i32 786472, metadata !"sw_http_HTT", i64 19} ; [ DW_TAG_enumerator ] [sw_http_HTT :: 19]
!1605 = metadata !{i32 786472, metadata !"sw_http_HTTP", i64 20} ; [ DW_TAG_enumerator ] [sw_http_HTTP :: 20]
!1606 = metadata !{i32 786472, metadata !"sw_first_major_digit", i64 21} ; [ DW_TAG_enumerator ] [sw_first_major_digit :: 21]
!1607 = metadata !{i32 786472, metadata !"sw_major_digit", i64 22} ; [ DW_TAG_enumerator ] [sw_major_digit :: 22]
!1608 = metadata !{i32 786472, metadata !"sw_first_minor_digit", i64 23} ; [ DW_TAG_enumerator ] [sw_first_minor_digit :: 23]
!1609 = metadata !{i32 786472, metadata !"sw_minor_digit", i64 24} ; [ DW_TAG_enumerator ] [sw_minor_digit :: 24]
!1610 = metadata !{i32 786472, metadata !"sw_spaces_after_digit", i64 25} ; [ DW_TAG_enumerator ] [sw_spaces_after_digit :: 25]
!1611 = metadata !{i32 786472, metadata !"sw_almost_done", i64 26} ; [ DW_TAG_enumerator ] [sw_almost_done :: 26]
!1612 = metadata !{i32 786436, metadata !1613, metadata !"__anonymous_0x8aa60f8", metadata !5, i32 840, i64 32, i64 32, i32 0, i32 0, null, metadata !1628, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [__anonymous_0x8aa60f8] [line 840, size 32, align 32, offset 0] [from ]
!1613 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_http_parse_header_line", metadata !"ngx_http_parse_header_line", metadata !"", metadata !5, i32 833, metadata !1614, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, %struct.ngx_buf_s*, i32)* @ngx_http_parse_header_line, null, null, metadata !1616, i32 834} ; [ DW_TAG_subprogram ] [line 833] [def] [scope 834] [ngx_http_parse_header_line]
!1614 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1615, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1615 = metadata !{metadata !8, metadata !12, metadata !153, metadata !62}
!1616 = metadata !{metadata !1617}
!1617 = metadata !{metadata !1618, metadata !1619, metadata !1620, metadata !1621, metadata !1623, metadata !1624, metadata !1625, metadata !1626, metadata !1627}
!1618 = metadata !{i32 786689, metadata !1613, metadata !"r", metadata !5, i32 16778049, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 833]
!1619 = metadata !{i32 786689, metadata !1613, metadata !"b", metadata !5, i32 33555265, metadata !153, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 833]
!1620 = metadata !{i32 786689, metadata !1613, metadata !"allow_underscores", metadata !5, i32 50332481, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [allow_underscores] [line 833]
!1621 = metadata !{i32 786688, metadata !1622, metadata !"c", metadata !5, i32 835, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 835]
!1622 = metadata !{i32 786443, metadata !1613, i32 834, i32 0, metadata !5, i32 162} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1623 = metadata !{i32 786688, metadata !1622, metadata !"ch", metadata !5, i32 836, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 836]
!1624 = metadata !{i32 786688, metadata !1622, metadata !"p", metadata !5, i32 837, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 837]
!1625 = metadata !{i32 786688, metadata !1622, metadata !"hash", metadata !5, i32 838, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 838]
!1626 = metadata !{i32 786688, metadata !1622, metadata !"i", metadata !5, i32 839, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 839]
!1627 = metadata !{i32 786688, metadata !1622, metadata !"state", metadata !5, i32 840, metadata !1612, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [state] [line 840]
!1628 = metadata !{metadata !1585, metadata !1629, metadata !1630, metadata !1631, metadata !1632, metadata !1633, metadata !1634, metadata !1635}
!1629 = metadata !{i32 786472, metadata !"sw_name", i64 1} ; [ DW_TAG_enumerator ] [sw_name :: 1]
!1630 = metadata !{i32 786472, metadata !"sw_space_before_value", i64 2} ; [ DW_TAG_enumerator ] [sw_space_before_value :: 2]
!1631 = metadata !{i32 786472, metadata !"sw_value", i64 3} ; [ DW_TAG_enumerator ] [sw_value :: 3]
!1632 = metadata !{i32 786472, metadata !"sw_space_after_value", i64 4} ; [ DW_TAG_enumerator ] [sw_space_after_value :: 4]
!1633 = metadata !{i32 786472, metadata !"sw_ignore_line", i64 5} ; [ DW_TAG_enumerator ] [sw_ignore_line :: 5]
!1634 = metadata !{i32 786472, metadata !"sw_almost_done", i64 6} ; [ DW_TAG_enumerator ] [sw_almost_done :: 6]
!1635 = metadata !{i32 786472, metadata !"sw_header_almost_done", i64 7} ; [ DW_TAG_enumerator ] [sw_header_almost_done :: 7]
!1636 = metadata !{i32 786436, metadata !1637, metadata !"__anonymous_0x8aa7d74", metadata !5, i32 1075, i64 32, i64 32, i32 0, i32 0, null, metadata !1652, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [__anonymous_0x8aa7d74] [line 1075, size 32, align 32, offset 0] [from ]
!1637 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_http_parse_complex_uri", metadata !"ngx_http_parse_complex_uri", metadata !"", metadata !5, i32 1068, metadata !1638, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, i32)* @ngx_http_parse_complex_uri, null, null, metadata !1640, i32 1069} ; [ DW_TAG_subprogram ] [line 1068] [def] [scope 1069] [ngx_http_parse_complex_uri]
!1638 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1639, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1639 = metadata !{metadata !8, metadata !12, metadata !62}
!1640 = metadata !{metadata !1641}
!1641 = metadata !{metadata !1642, metadata !1643, metadata !1644, metadata !1646, metadata !1647, metadata !1648, metadata !1649, metadata !1650, metadata !1651}
!1642 = metadata !{i32 786689, metadata !1637, metadata !"r", metadata !5, i32 16778284, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 1068]
!1643 = metadata !{i32 786689, metadata !1637, metadata !"merge_slashes", metadata !5, i32 33555500, metadata !62, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [merge_slashes] [line 1068]
!1644 = metadata !{i32 786688, metadata !1645, metadata !"c", metadata !5, i32 1070, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 1070]
!1645 = metadata !{i32 786443, metadata !1637, i32 1069, i32 0, metadata !5, i32 203} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1646 = metadata !{i32 786688, metadata !1645, metadata !"ch", metadata !5, i32 1071, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 1071]
!1647 = metadata !{i32 786688, metadata !1645, metadata !"decoded", metadata !5, i32 1072, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [decoded] [line 1072]
!1648 = metadata !{i32 786688, metadata !1645, metadata !"p", metadata !5, i32 1073, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1073]
!1649 = metadata !{i32 786688, metadata !1645, metadata !"u", metadata !5, i32 1074, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 1074]
!1650 = metadata !{i32 786688, metadata !1645, metadata !"state", metadata !5, i32 1075, metadata !1636, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [state] [line 1075]
!1651 = metadata !{i32 786688, metadata !1645, metadata !"quoted_state", metadata !5, i32 1076, metadata !1636, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [quoted_state] [line 1076]
!1652 = metadata !{metadata !1653, metadata !1654, metadata !1655, metadata !1656, metadata !1657, metadata !1658}
!1653 = metadata !{i32 786472, metadata !"sw_usual", i64 0} ; [ DW_TAG_enumerator ] [sw_usual :: 0]
!1654 = metadata !{i32 786472, metadata !"sw_slash", i64 1} ; [ DW_TAG_enumerator ] [sw_slash :: 1]
!1655 = metadata !{i32 786472, metadata !"sw_dot", i64 2} ; [ DW_TAG_enumerator ] [sw_dot :: 2]
!1656 = metadata !{i32 786472, metadata !"sw_dot_dot", i64 3} ; [ DW_TAG_enumerator ] [sw_dot_dot :: 3]
!1657 = metadata !{i32 786472, metadata !"sw_quoted", i64 4} ; [ DW_TAG_enumerator ] [sw_quoted :: 4]
!1658 = metadata !{i32 786472, metadata !"sw_quoted_second", i64 5} ; [ DW_TAG_enumerator ] [sw_quoted_second :: 5]
!1659 = metadata !{i32 786436, metadata !1660, metadata !"__anonymous_0x8af9aa8", metadata !5, i32 1382, i64 32, i64 32, i32 0, i32 0, null, metadata !1682, i32 0, i32 0} ; [ DW_TAG_enumeration_type ] [__anonymous_0x8af9aa8] [line 1382, size 32, align 32, offset 0] [from ]
!1660 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_http_parse_status_line", metadata !"ngx_http_parse_status_line", metadata !"", metadata !5, i32 1378, metadata !1661, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, %struct.ngx_buf_s*, %struct.ngx_http_status_t*)* @ngx_http_parse_status_line, null, null, metadata !1673, i32 1379} ; [ DW_TAG_subprogram ] [line 1378] [def] [scope 1379] [ngx_http_parse_status_line]
!1661 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1662, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1662 = metadata !{metadata !8, metadata !12, metadata !153, metadata !1663}
!1663 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1664} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_status_t]
!1664 = metadata !{i32 786454, null, metadata !"ngx_http_status_t", metadata !5, i32 61, i64 0, i64 0, i64 0, i32 0, metadata !1665} ; [ DW_TAG_typedef ] [ngx_http_status_t] [line 61, size 0, align 0, offset 0] [from ]
!1665 = metadata !{i32 786451, null, metadata !"", metadata !1666, i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !1667, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 55, size 160, align 32, offset 0] [from ]
!1666 = metadata !{i32 786473, metadata !"src/http/ngx_http.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1667 = metadata !{metadata !1668, metadata !1669, metadata !1670, metadata !1671, metadata !1672}
!1668 = metadata !{i32 786445, metadata !1665, metadata !"http_version", metadata !1666, i32 56, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [http_version] [line 56, size 32, align 32, offset 0] [from ngx_uint_t]
!1669 = metadata !{i32 786445, metadata !1665, metadata !"code", metadata !1666, i32 57, i64 32, i64 32, i64 32, i32 0, metadata !62} ; [ DW_TAG_member ] [code] [line 57, size 32, align 32, offset 32] [from ngx_uint_t]
!1670 = metadata !{i32 786445, metadata !1665, metadata !"count", metadata !1666, i32 58, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [count] [line 58, size 32, align 32, offset 64] [from ngx_uint_t]
!1671 = metadata !{i32 786445, metadata !1665, metadata !"start", metadata !1666, i32 59, i64 32, i64 32, i64 96, i32 0, metadata !87} ; [ DW_TAG_member ] [start] [line 59, size 32, align 32, offset 96] [from ]
!1672 = metadata !{i32 786445, metadata !1665, metadata !"end", metadata !1666, i32 60, i64 32, i64 32, i64 128, i32 0, metadata !87} ; [ DW_TAG_member ] [end] [line 60, size 32, align 32, offset 128] [from ]
!1673 = metadata !{metadata !1674}
!1674 = metadata !{metadata !1675, metadata !1676, metadata !1677, metadata !1678, metadata !1680, metadata !1681}
!1675 = metadata !{i32 786689, metadata !1660, metadata !"r", metadata !5, i32 16778594, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 1378]
!1676 = metadata !{i32 786689, metadata !1660, metadata !"b", metadata !5, i32 33555810, metadata !153, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 1378]
!1677 = metadata !{i32 786689, metadata !1660, metadata !"status", metadata !5, i32 50333026, metadata !1663, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [status] [line 1378]
!1678 = metadata !{i32 786688, metadata !1679, metadata !"ch", metadata !5, i32 1380, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 1380]
!1679 = metadata !{i32 786443, metadata !1660, i32 1379, i32 0, metadata !5, i32 256} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1680 = metadata !{i32 786688, metadata !1679, metadata !"p", metadata !5, i32 1381, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1381]
!1681 = metadata !{i32 786688, metadata !1679, metadata !"state", metadata !5, i32 1382, metadata !1659, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [state] [line 1382]
!1682 = metadata !{metadata !1585, metadata !1683, metadata !1684, metadata !1685, metadata !1686, metadata !1687, metadata !1688, metadata !1689, metadata !1690, metadata !1691, metadata !1692, metadata !1693, metadata !1694}
!1683 = metadata !{i32 786472, metadata !"sw_H", i64 1} ; [ DW_TAG_enumerator ] [sw_H :: 1]
!1684 = metadata !{i32 786472, metadata !"sw_HT", i64 2} ; [ DW_TAG_enumerator ] [sw_HT :: 2]
!1685 = metadata !{i32 786472, metadata !"sw_HTT", i64 3} ; [ DW_TAG_enumerator ] [sw_HTT :: 3]
!1686 = metadata !{i32 786472, metadata !"sw_HTTP", i64 4} ; [ DW_TAG_enumerator ] [sw_HTTP :: 4]
!1687 = metadata !{i32 786472, metadata !"sw_first_major_digit", i64 5} ; [ DW_TAG_enumerator ] [sw_first_major_digit :: 5]
!1688 = metadata !{i32 786472, metadata !"sw_major_digit", i64 6} ; [ DW_TAG_enumerator ] [sw_major_digit :: 6]
!1689 = metadata !{i32 786472, metadata !"sw_first_minor_digit", i64 7} ; [ DW_TAG_enumerator ] [sw_first_minor_digit :: 7]
!1690 = metadata !{i32 786472, metadata !"sw_minor_digit", i64 8} ; [ DW_TAG_enumerator ] [sw_minor_digit :: 8]
!1691 = metadata !{i32 786472, metadata !"sw_status", i64 9} ; [ DW_TAG_enumerator ] [sw_status :: 9]
!1692 = metadata !{i32 786472, metadata !"sw_space_after_status", i64 10} ; [ DW_TAG_enumerator ] [sw_space_after_status :: 10]
!1693 = metadata !{i32 786472, metadata !"sw_status_text", i64 11} ; [ DW_TAG_enumerator ] [sw_status_text :: 11]
!1694 = metadata !{i32 786472, metadata !"sw_almost_done", i64 12} ; [ DW_TAG_enumerator ] [sw_almost_done :: 12]
!1695 = metadata !{metadata !1696}
!1696 = metadata !{i32 0}
!1697 = metadata !{metadata !1698}
!1698 = metadata !{metadata !4, metadata !1613, metadata !1637, metadata !1660, metadata !1699, metadata !1712, metadata !1728, metadata !1740, metadata !1751}
!1699 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_http_parse_unsafe_uri", metadata !"ngx_http_parse_unsafe_uri", metadata !"", metadata !5, i32 1582, metadata !1700, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, %struct.ngx_str_t*, %struct.ngx_str_t*, i32*)* @ngx_http_parse_unsafe_uri, null, null, metadata !1702, i32 1583} ; [ DW_TAG_subprogram ] [line 1582] [def] [scope 1583] [ngx_http_parse_unsafe_uri]
!1700 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1701, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1701 = metadata !{metadata !8, metadata !12, metadata !605, metadata !605, metadata !1408}
!1702 = metadata !{metadata !1703}
!1703 = metadata !{metadata !1704, metadata !1705, metadata !1706, metadata !1707, metadata !1708, metadata !1710, metadata !1711}
!1704 = metadata !{i32 786689, metadata !1699, metadata !"r", metadata !5, i32 16778798, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 1582]
!1705 = metadata !{i32 786689, metadata !1699, metadata !"uri", metadata !5, i32 33556014, metadata !605, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [uri] [line 1582]
!1706 = metadata !{i32 786689, metadata !1699, metadata !"args", metadata !5, i32 50333230, metadata !605, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [args] [line 1582]
!1707 = metadata !{i32 786689, metadata !1699, metadata !"flags", metadata !5, i32 67110446, metadata !1408, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flags] [line 1582]
!1708 = metadata !{i32 786688, metadata !1709, metadata !"ch", metadata !5, i32 1584, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 1584]
!1709 = metadata !{i32 786443, metadata !1699, i32 1583, i32 0, metadata !5, i32 300} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1710 = metadata !{i32 786688, metadata !1709, metadata !"p", metadata !5, i32 1585, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1585]
!1711 = metadata !{i32 786688, metadata !1709, metadata !"len", metadata !5, i32 1586, metadata !85, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 1586]
!1712 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_http_parse_multi_header_lines", metadata !"ngx_http_parse_multi_header_lines", metadata !"", metadata !5, i32 1626, metadata !1713, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_array_s*, %struct.ngx_str_t*, %struct.ngx_str_t*)* @ngx_http_parse_multi_header_lines, null, null, metadata !1715, i32 1627} ; [ DW_TAG_subprogram ] [line 1626] [def] [scope 1627] [ngx_http_parse_multi_header_lines]
!1713 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1714, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1714 = metadata !{metadata !8, metadata !765, metadata !605, metadata !605}
!1715 = metadata !{metadata !1716}
!1716 = metadata !{metadata !1717, metadata !1718, metadata !1719, metadata !1720, metadata !1722, metadata !1723, metadata !1724, metadata !1725, metadata !1726}
!1717 = metadata !{i32 786689, metadata !1712, metadata !"headers", metadata !5, i32 16778842, metadata !765, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [headers] [line 1626]
!1718 = metadata !{i32 786689, metadata !1712, metadata !"name", metadata !5, i32 33556058, metadata !605, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1626]
!1719 = metadata !{i32 786689, metadata !1712, metadata !"value", metadata !5, i32 50333274, metadata !605, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 1626]
!1720 = metadata !{i32 786688, metadata !1721, metadata !"i", metadata !5, i32 1628, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1628]
!1721 = metadata !{i32 786443, metadata !1712, i32 1627, i32 0, metadata !5, i32 311} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1722 = metadata !{i32 786688, metadata !1721, metadata !"start", metadata !5, i32 1629, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 1629]
!1723 = metadata !{i32 786688, metadata !1721, metadata !"last", metadata !5, i32 1630, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 1630]
!1724 = metadata !{i32 786688, metadata !1721, metadata !"end", metadata !5, i32 1631, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 1631]
!1725 = metadata !{i32 786688, metadata !1721, metadata !"ch", metadata !5, i32 1632, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 1632]
!1726 = metadata !{i32 786688, metadata !1721, metadata !"h", metadata !5, i32 1633, metadata !1727, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 1633]
!1727 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !934} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1728 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_http_arg", metadata !"ngx_http_arg", metadata !"", metadata !5, i32 1683, metadata !1729, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, i8*, i32, %struct.ngx_str_t*)* @ngx_http_arg, null, null, metadata !1731, i32 1684} ; [ DW_TAG_subprogram ] [line 1683] [def] [scope 1684] [ngx_http_arg]
!1729 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1730, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1730 = metadata !{metadata !8, metadata !12, metadata !87, metadata !85, metadata !605}
!1731 = metadata !{metadata !1732}
!1732 = metadata !{metadata !1733, metadata !1734, metadata !1735, metadata !1736, metadata !1737, metadata !1739}
!1733 = metadata !{i32 786689, metadata !1728, metadata !"r", metadata !5, i32 16778899, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 1683]
!1734 = metadata !{i32 786689, metadata !1728, metadata !"name", metadata !5, i32 33556115, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 1683]
!1735 = metadata !{i32 786689, metadata !1728, metadata !"len", metadata !5, i32 50333331, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 1683]
!1736 = metadata !{i32 786689, metadata !1728, metadata !"value", metadata !5, i32 67110547, metadata !605, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 1683]
!1737 = metadata !{i32 786688, metadata !1738, metadata !"p", metadata !5, i32 1685, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1685]
!1738 = metadata !{i32 786443, metadata !1728, i32 1684, i32 0, metadata !5, i32 328} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1739 = metadata !{i32 786688, metadata !1738, metadata !"last", metadata !5, i32 1686, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 1686]
!1740 = metadata !{i32 786478, i32 0, metadata !5, metadata !"ngx_http_split_args", metadata !"ngx_http_split_args", metadata !"", metadata !5, i32 1712, metadata !1741, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_http_request_s*, %struct.ngx_str_t*, %struct.ngx_str_t*)* @ngx_http_split_args, null, null, metadata !1743, i32 1713} ; [ DW_TAG_subprogram ] [line 1712] [def] [scope 1713] [ngx_http_split_args]
!1741 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1742, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1742 = metadata !{null, metadata !12, metadata !605, metadata !605}
!1743 = metadata !{metadata !1744}
!1744 = metadata !{metadata !1745, metadata !1746, metadata !1747, metadata !1748, metadata !1750}
!1745 = metadata !{i32 786689, metadata !1740, metadata !"r", metadata !5, i32 16778928, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 1712]
!1746 = metadata !{i32 786689, metadata !1740, metadata !"uri", metadata !5, i32 33556144, metadata !605, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [uri] [line 1712]
!1747 = metadata !{i32 786689, metadata !1740, metadata !"args", metadata !5, i32 50333360, metadata !605, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [args] [line 1712]
!1748 = metadata !{i32 786688, metadata !1749, metadata !"p", metadata !5, i32 1714, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1714]
!1749 = metadata !{i32 786443, metadata !1740, i32 1713, i32 0, metadata !5, i32 335} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1750 = metadata !{i32 786688, metadata !1749, metadata !"last", metadata !5, i32 1715, metadata !87, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 1715]
!1751 = metadata !{i32 786478, i32 0, metadata !82, metadata !"ngx_strlchr", metadata !"ngx_strlchr", metadata !"", metadata !82, i32 66, metadata !1752, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1754, i32 67} ; [ DW_TAG_subprogram ] [line 66] [local] [def] [scope 67] [ngx_strlchr]
!1752 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1753, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1753 = metadata !{metadata !87, metadata !87, metadata !87, metadata !88}
!1754 = metadata !{metadata !1755}
!1755 = metadata !{metadata !1756, metadata !1757, metadata !1758}
!1756 = metadata !{i32 786689, metadata !1751, metadata !"p", metadata !82, i32 16777282, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 66]
!1757 = metadata !{i32 786689, metadata !1751, metadata !"last", metadata !82, i32 33554498, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [last] [line 66]
!1758 = metadata !{i32 786689, metadata !1751, metadata !"c", metadata !82, i32 50331714, metadata !88, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 66]
!1759 = metadata !{metadata !1760}
!1760 = metadata !{metadata !1761, metadata !1765}
!1761 = metadata !{i32 786484, i32 0, metadata !1613, metadata !"lowcase", metadata !"lowcase", metadata !"", metadata !5, i32 842, metadata !1762, i32 1, i32 1, [256 x i8]* @ngx_http_parse_header_line.lowcase} ; [ DW_TAG_variable ] [lowcase] [line 842] [local] [def]
!1762 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !88, metadata !1763, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from u_char]
!1763 = metadata !{metadata !1764}
!1764 = metadata !{i32 786465, i64 0, i64 255}    ; [ DW_TAG_subrange_type ] [0, 255]
!1765 = metadata !{i32 786484, i32 0, null, metadata !"usual", metadata !"usual", metadata !"", metadata !5, i32 8, metadata !1766, i32 1, i32 1, [8 x i32]* @usual} ; [ DW_TAG_variable ] [usual] [line 8] [local] [def]
!1766 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !18, metadata !1767, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from uint32_t]
!1767 = metadata !{metadata !1768}
!1768 = metadata !{i32 786465, i64 0, i64 7}      ; [ DW_TAG_subrange_type ] [0, 7]
!1769 = metadata !{i32 71, i32 0, metadata !4, null}
!1770 = metadata !{i32 78, i32 0, metadata !1579, null}
!1771 = metadata !{metadata !"int", metadata !1772}
!1772 = metadata !{metadata !"omnipotent char", metadata !1773}
!1773 = metadata !{metadata !"Simple C/C++ TBAA"}
!1774 = metadata !{i32 79, i32 0, metadata !1775, null}
!1775 = metadata !{i32 786443, metadata !1579, i32 79, i32 0, metadata !5, i32 1} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1776 = metadata !{metadata !"any pointer", metadata !1772}
!1777 = metadata !{i32 85, i32 0, metadata !1778, null}
!1778 = metadata !{i32 786443, metadata !1779, i32 83, i32 0, metadata !5, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1779 = metadata !{i32 786443, metadata !1780, i32 81, i32 0, metadata !5, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1780 = metadata !{i32 786443, metadata !1775, i32 79, i32 0, metadata !5, i32 2} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1781 = metadata !{i32 98, i32 0, metadata !1782, null}
!1782 = metadata !{i32 786443, metadata !1783, i32 97, i32 0, metadata !5, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1783 = metadata !{i32 786443, metadata !1779, i32 96, i32 0, metadata !5, i32 7} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1784 = metadata !{i32 104, i32 0, metadata !1785, null}
!1785 = metadata !{i32 786443, metadata !1786, i32 103, i32 0, metadata !5, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1786 = metadata !{i32 786443, metadata !1787, i32 102, i32 0, metadata !5, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1787 = metadata !{i32 786443, metadata !1782, i32 100, i32 0, metadata !5, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1788 = metadata !{i32 200, i32 0, metadata !1789, null}
!1789 = metadata !{i32 786443, metadata !1790, i32 199, i32 0, metadata !5, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1790 = metadata !{i32 786443, metadata !1779, i32 197, i32 0, metadata !5, i32 35} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1791 = metadata !{i32 206, i32 0, metadata !1792, null}
!1792 = metadata !{i32 786443, metadata !1790, i32 205, i32 0, metadata !5, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1793 = metadata !{i32 227, i32 0, metadata !1794, null}
!1794 = metadata !{i32 786443, metadata !1795, i32 226, i32 0, metadata !5, i32 42} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1795 = metadata !{i32 786443, metadata !1796, i32 224, i32 0, metadata !5, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1796 = metadata !{i32 786443, metadata !1779, i32 219, i32 0, metadata !5, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1797 = metadata !{i32 264, i32 0, metadata !1798, null}
!1798 = metadata !{i32 786443, metadata !1779, i32 263, i32 0, metadata !5, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1799 = metadata !{i32 285, i32 0, metadata !1800, null}
!1800 = metadata !{i32 786443, metadata !1779, i32 283, i32 0, metadata !5, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1801 = metadata !{i32 305, i32 0, metadata !1802, null}
!1802 = metadata !{i32 786443, metadata !1803, i32 299, i32 0, metadata !5, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1803 = metadata !{i32 786443, metadata !1800, i32 286, i32 0, metadata !5, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1804 = metadata !{i32 389, i32 0, metadata !1805, null}
!1805 = metadata !{i32 786443, metadata !1806, i32 388, i32 0, metadata !5, i32 80} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1806 = metadata !{i32 786443, metadata !1807, i32 386, i32 0, metadata !5, i32 79} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1807 = metadata !{i32 786443, metadata !1779, i32 382, i32 0, metadata !5, i32 77} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1808 = metadata !{i32 419, i32 0, metadata !1809, null}
!1809 = metadata !{i32 786443, metadata !1810, i32 418, i32 0, metadata !5, i32 84} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1810 = metadata !{i32 786443, metadata !1811, i32 414, i32 0, metadata !5, i32 83} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1811 = metadata !{i32 786443, metadata !1779, i32 412, i32 0, metadata !5, i32 82} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1812 = metadata !{i32 430, i32 0, metadata !1813, null}
!1813 = metadata !{i32 786443, metadata !1810, i32 429, i32 0, metadata !5, i32 86} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1814 = metadata !{i32 468, i32 0, metadata !1815, null}
!1815 = metadata !{i32 786443, metadata !1816, i32 467, i32 0, metadata !5, i32 93} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1816 = metadata !{i32 786443, metadata !1817, i32 446, i32 0, metadata !5, i32 89} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1817 = metadata !{i32 786443, metadata !1779, i32 440, i32 0, metadata !5, i32 87} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1818 = metadata !{i32 488, i32 0, metadata !1819, null}
!1819 = metadata !{i32 786443, metadata !1816, i32 485, i32 0, metadata !5, i32 96} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1820 = metadata !{i32 524, i32 0, metadata !1821, null}
!1821 = metadata !{i32 786443, metadata !1822, i32 521, i32 0, metadata !5, i32 103} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1822 = metadata !{i32 786443, metadata !1823, i32 519, i32 0, metadata !5, i32 102} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1823 = metadata !{i32 786443, metadata !1779, i32 514, i32 0, metadata !5, i32 100} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1824 = metadata !{i32 607, i32 0, metadata !1825, null}
!1825 = metadata !{i32 786443, metadata !1826, i32 606, i32 0, metadata !5, i32 117} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1826 = metadata !{i32 786443, metadata !1827, i32 585, i32 0, metadata !5, i32 113} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1827 = metadata !{i32 786443, metadata !1779, i32 583, i32 0, metadata !5, i32 112} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1828 = metadata !{i32 80, i32 0, metadata !1780, null}
!1829 = metadata !{i32 81, i32 0, metadata !1780, null}
!1830 = metadata !{i32 286, i32 0, metadata !1800, null}
!1831 = metadata !{i32 86, i32 0, metadata !1778, null}
!1832 = metadata !{i32 89, i32 0, metadata !1778, null}
!1833 = metadata !{i32 97, i32 0, metadata !1783, null}
!1834 = metadata !{i32 99, i32 0, metadata !1782, null}
!1835 = metadata !{i32 100, i32 0, metadata !1782, null}
!1836 = metadata !{i32 103, i32 0, metadata !1786, null}
!1837 = metadata !{i32 105, i32 0, metadata !1785, null}
!1838 = metadata !{i32 108, i32 0, metadata !1839, null}
!1839 = metadata !{i32 786443, metadata !1786, i32 107, i32 0, metadata !5, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1840 = metadata !{i32 109, i32 0, metadata !1839, null}
!1841 = metadata !{i32 115, i32 0, metadata !1842, null}
!1842 = metadata !{i32 786443, metadata !1787, i32 114, i32 0, metadata !5, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1843 = metadata !{i32 116, i32 0, metadata !1844, null}
!1844 = metadata !{i32 786443, metadata !1842, i32 115, i32 0, metadata !5, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1845 = metadata !{i32 117, i32 0, metadata !1846, null}
!1846 = metadata !{i32 786443, metadata !1844, i32 116, i32 0, metadata !5, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1847 = metadata !{i32 118, i32 0, metadata !1846, null}
!1848 = metadata !{i32 121, i32 0, metadata !1849, null}
!1849 = metadata !{i32 786443, metadata !1844, i32 120, i32 0, metadata !5, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1850 = metadata !{i32 122, i32 0, metadata !1849, null}
!1851 = metadata !{i32 125, i32 0, metadata !1852, null}
!1852 = metadata !{i32 786443, metadata !1844, i32 124, i32 0, metadata !5, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1853 = metadata !{i32 126, i32 0, metadata !1852, null}
!1854 = metadata !{i32 129, i32 0, metadata !1855, null}
!1855 = metadata !{i32 786443, metadata !1844, i32 128, i32 0, metadata !5, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1856 = metadata !{i32 130, i32 0, metadata !1855, null}
!1857 = metadata !{i32 134, i32 0, metadata !1858, null}
!1858 = metadata !{i32 786443, metadata !1842, i32 133, i32 0, metadata !5, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1859 = metadata !{i32 135, i32 0, metadata !1860, null}
!1860 = metadata !{i32 786443, metadata !1858, i32 134, i32 0, metadata !5, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1861 = metadata !{i32 136, i32 0, metadata !1860, null}
!1862 = metadata !{i32 143, i32 0, metadata !1863, null}
!1863 = metadata !{i32 786443, metadata !1787, i32 142, i32 0, metadata !5, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1864 = metadata !{i32 144, i32 0, metadata !1865, null}
!1865 = metadata !{i32 786443, metadata !1863, i32 143, i32 0, metadata !5, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1866 = metadata !{i32 146, i32 0, metadata !1863, null}
!1867 = metadata !{i32 145, i32 0, metadata !1865, null}
!1868 = metadata !{i32 147, i32 0, metadata !1869, null}
!1869 = metadata !{i32 786443, metadata !1863, i32 146, i32 0, metadata !5, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1870 = metadata !{i32 149, i32 0, metadata !1863, null}
!1871 = metadata !{i32 148, i32 0, metadata !1869, null}
!1872 = metadata !{i32 150, i32 0, metadata !1873, null}
!1873 = metadata !{i32 786443, metadata !1863, i32 149, i32 0, metadata !5, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1874 = metadata !{i32 151, i32 0, metadata !1873, null}
!1875 = metadata !{i32 156, i32 0, metadata !1876, null}
!1876 = metadata !{i32 786443, metadata !1787, i32 155, i32 0, metadata !5, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1877 = metadata !{i32 157, i32 0, metadata !1878, null}
!1878 = metadata !{i32 786443, metadata !1876, i32 156, i32 0, metadata !5, i32 26} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1879 = metadata !{i32 158, i32 0, metadata !1878, null}
!1880 = metadata !{i32 160, i32 0, metadata !1876, null}
!1881 = metadata !{i32 161, i32 0, metadata !1882, null}
!1882 = metadata !{i32 786443, metadata !1876, i32 160, i32 0, metadata !5, i32 27} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1883 = metadata !{i32 162, i32 0, metadata !1882, null}
!1884 = metadata !{i32 168, i32 0, metadata !1885, null}
!1885 = metadata !{i32 786443, metadata !1787, i32 167, i32 0, metadata !5, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1886 = metadata !{i32 169, i32 0, metadata !1887, null}
!1887 = metadata !{i32 786443, metadata !1885, i32 168, i32 0, metadata !5, i32 29} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1888 = metadata !{i32 170, i32 0, metadata !1887, null}
!1889 = metadata !{i32 175, i32 0, metadata !1890, null}
!1890 = metadata !{i32 786443, metadata !1787, i32 174, i32 0, metadata !5, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1891 = metadata !{i32 176, i32 0, metadata !1892, null}
!1892 = metadata !{i32 786443, metadata !1890, i32 175, i32 0, metadata !5, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1893 = metadata !{i32 177, i32 0, metadata !1892, null}
!1894 = metadata !{i32 182, i32 0, metadata !1895, null}
!1895 = metadata !{i32 786443, metadata !1787, i32 181, i32 0, metadata !5, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1896 = metadata !{i32 183, i32 0, metadata !1897, null}
!1897 = metadata !{i32 786443, metadata !1895, i32 182, i32 0, metadata !5, i32 33} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1898 = metadata !{i32 184, i32 0, metadata !1897, null}
!1899 = metadata !{i32 191, i32 0, metadata !1783, null}
!1900 = metadata !{i32 199, i32 0, metadata !1790, null}
!1901 = metadata !{i32 12}
!1902 = metadata !{i32 201, i32 0, metadata !1789, null}
!1903 = metadata !{i32 202, i32 0, metadata !1789, null}
!1904 = metadata !{i32 204, i32 0, metadata !1790, null}
!1905 = metadata !{i32 205, i32 0, metadata !1790, null}
!1906 = metadata !{i32 3}
!1907 = metadata !{i32 207, i32 0, metadata !1792, null}
!1908 = metadata !{i32 208, i32 0, metadata !1792, null}
!1909 = metadata !{i32 210, i32 0, metadata !1790, null}
!1910 = metadata !{i32 220, i32 0, metadata !1796, null}
!1911 = metadata !{i32 221, i32 0, metadata !1796, null}
!1912 = metadata !{i32 224, i32 0, metadata !1796, null}
!1913 = metadata !{i32 4}
!1914 = metadata !{i32 228, i32 0, metadata !1794, null}
!1915 = metadata !{i32 234, i32 0, metadata !1796, null}
!1916 = metadata !{i32 238, i32 0, metadata !1917, null}
!1917 = metadata !{i32 786443, metadata !1779, i32 237, i32 0, metadata !5, i32 43} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1918 = metadata !{i32 251, i32 0, metadata !1919, null}
!1919 = metadata !{i32 786443, metadata !1779, i32 250, i32 0, metadata !5, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1920 = metadata !{i32 265, i32 0, metadata !1798, null}
!1921 = metadata !{i32 274, i32 0, metadata !1922, null}
!1922 = metadata !{i32 786443, metadata !1779, i32 272, i32 0, metadata !5, i32 51} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1923 = metadata !{i32 275, i32 0, metadata !1922, null}
!1924 = metadata !{i32 278, i32 0, metadata !1922, null}
!1925 = metadata !{i32 294, i32 0, metadata !1926, null}
!1926 = metadata !{i32 786443, metadata !1803, i32 293, i32 0, metadata !5, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1927 = metadata !{i32 295, i32 0, metadata !1926, null}
!1928 = metadata !{i32 296, i32 0, metadata !1926, null}
!1929 = metadata !{i32 304, i32 0, metadata !1802, null}
!1930 = metadata !{i32 11}
!1931 = metadata !{i32 306, i32 0, metadata !1802, null}
!1932 = metadata !{i32 307, i32 0, metadata !1802, null}
!1933 = metadata !{i32 316, i32 0, metadata !1934, null}
!1934 = metadata !{i32 786443, metadata !1779, i32 315, i32 0, metadata !5, i32 59} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1935 = metadata !{i32 319, i32 0, metadata !1934, null}
!1936 = metadata !{i32 320, i32 0, metadata !1934, null}
!1937 = metadata !{i32 323, i32 0, metadata !1934, null}
!1938 = metadata !{i32 8}
!1939 = metadata !{i32 328, i32 0, metadata !1940, null}
!1940 = metadata !{i32 786443, metadata !1941, i32 327, i32 0, metadata !5, i32 63} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1941 = metadata !{i32 786443, metadata !1934, i32 323, i32 0, metadata !5, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1942 = metadata !{i32 329, i32 0, metadata !1940, null}
!1943 = metadata !{i32 383, i32 0, metadata !1807, null}
!1944 = metadata !{i32 386, i32 0, metadata !1807, null}
!1945 = metadata !{i32 390, i32 0, metadata !1805, null}
!1946 = metadata !{i32 391, i32 0, metadata !1805, null}
!1947 = metadata !{i32 392, i32 0, metadata !1805, null}
!1948 = metadata !{i32 396, i32 0, metadata !1949, null}
!1949 = metadata !{i32 786443, metadata !1806, i32 395, i32 0, metadata !5, i32 81} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1950 = metadata !{i32 401, i32 0, metadata !1949, null}
!1951 = metadata !{i32 402, i32 0, metadata !1949, null}
!1952 = metadata !{i32 403, i32 0, metadata !1949, null}
!1953 = metadata !{i32 404, i32 0, metadata !1949, null}
!1954 = metadata !{i32 414, i32 0, metadata !1811, null}
!1955 = metadata !{i32 26}
!1956 = metadata !{i32 420, i32 0, metadata !1809, null}
!1957 = metadata !{i32 421, i32 0, metadata !1809, null}
!1958 = metadata !{i32 425, i32 0, metadata !1959, null}
!1959 = metadata !{i32 786443, metadata !1810, i32 424, i32 0, metadata !5, i32 85} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1960 = metadata !{i32 426, i32 0, metadata !1959, null}
!1961 = metadata !{i32 17}
!1962 = metadata !{i32 431, i32 0, metadata !1813, null}
!1963 = metadata !{i32 432, i32 0, metadata !1813, null}
!1964 = metadata !{i32 442, i32 0, metadata !1817, null}
!1965 = metadata !{i32 446, i32 0, metadata !1817, null}
!1966 = metadata !{i32 449, i32 0, metadata !1967, null}
!1967 = metadata !{i32 786443, metadata !1816, i32 448, i32 0, metadata !5, i32 90} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1968 = metadata !{i32 14}
!1969 = metadata !{i32 450, i32 0, metadata !1967, null}
!1970 = metadata !{i32 451, i32 0, metadata !1967, null}
!1971 = metadata !{i32 455, i32 0, metadata !1972, null}
!1972 = metadata !{i32 786443, metadata !1816, i32 454, i32 0, metadata !5, i32 91} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1973 = metadata !{i32 456, i32 0, metadata !1972, null}
!1974 = metadata !{i32 457, i32 0, metadata !1972, null}
!1975 = metadata !{i32 458, i32 0, metadata !1972, null}
!1976 = metadata !{i32 462, i32 0, metadata !1977, null}
!1977 = metadata !{i32 786443, metadata !1816, i32 461, i32 0, metadata !5, i32 92} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1978 = metadata !{i32 463, i32 0, metadata !1977, null}
!1979 = metadata !{i32 464, i32 0, metadata !1977, null}
!1980 = metadata !{i32 15}
!1981 = metadata !{i32 469, i32 0, metadata !1815, null}
!1982 = metadata !{i32 470, i32 0, metadata !1815, null}
!1983 = metadata !{i32 474, i32 0, metadata !1984, null}
!1984 = metadata !{i32 786443, metadata !1816, i32 473, i32 0, metadata !5, i32 94} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1985 = metadata !{i32 475, i32 0, metadata !1984, null}
!1986 = metadata !{i32 476, i32 0, metadata !1984, null}
!1987 = metadata !{i32 480, i32 0, metadata !1988, null}
!1988 = metadata !{i32 786443, metadata !1816, i32 479, i32 0, metadata !5, i32 95} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1989 = metadata !{i32 481, i32 0, metadata !1988, null}
!1990 = metadata !{i32 482, i32 0, metadata !1988, null}
!1991 = metadata !{i32 489, i32 0, metadata !1819, null}
!1992 = metadata !{i32 490, i32 0, metadata !1819, null}
!1993 = metadata !{i32 494, i32 0, metadata !1994, null}
!1994 = metadata !{i32 786443, metadata !1816, i32 493, i32 0, metadata !5, i32 97} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1995 = metadata !{i32 495, i32 0, metadata !1994, null}
!1996 = metadata !{i32 496, i32 0, metadata !1994, null}
!1997 = metadata !{i32 500, i32 0, metadata !1998, null}
!1998 = metadata !{i32 786443, metadata !1816, i32 499, i32 0, metadata !5, i32 98} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!1999 = metadata !{i32 501, i32 0, metadata !1998, null}
!2000 = metadata !{i32 516, i32 0, metadata !1823, null}
!2001 = metadata !{i32 519, i32 0, metadata !1823, null}
!2002 = metadata !{i32 525, i32 0, metadata !1821, null}
!2003 = metadata !{i32 526, i32 0, metadata !1821, null}
!2004 = metadata !{i32 530, i32 0, metadata !2005, null}
!2005 = metadata !{i32 786443, metadata !1822, i32 529, i32 0, metadata !5, i32 104} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2006 = metadata !{i32 531, i32 0, metadata !2005, null}
!2007 = metadata !{i32 535, i32 0, metadata !2008, null}
!2008 = metadata !{i32 786443, metadata !1822, i32 534, i32 0, metadata !5, i32 105} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2009 = metadata !{i32 536, i32 0, metadata !2008, null}
!2010 = metadata !{i32 537, i32 0, metadata !2008, null}
!2011 = metadata !{i32 541, i32 0, metadata !2012, null}
!2012 = metadata !{i32 786443, metadata !1822, i32 540, i32 0, metadata !5, i32 106} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2013 = metadata !{i32 542, i32 0, metadata !2012, null}
!2014 = metadata !{i32 543, i32 0, metadata !2012, null}
!2015 = metadata !{i32 544, i32 0, metadata !2012, null}
!2016 = metadata !{i32 548, i32 0, metadata !2017, null}
!2017 = metadata !{i32 786443, metadata !1822, i32 547, i32 0, metadata !5, i32 107} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2018 = metadata !{i32 549, i32 0, metadata !2017, null}
!2019 = metadata !{i32 550, i32 0, metadata !2017, null}
!2020 = metadata !{i32 556, i32 0, metadata !2021, null}
!2021 = metadata !{i32 786443, metadata !1822, i32 553, i32 0, metadata !5, i32 108} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2022 = metadata !{i32 557, i32 0, metadata !2021, null}
!2023 = metadata !{i32 558, i32 0, metadata !2021, null}
!2024 = metadata !{i32 562, i32 0, metadata !2025, null}
!2025 = metadata !{i32 786443, metadata !1822, i32 561, i32 0, metadata !5, i32 109} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2026 = metadata !{i32 563, i32 0, metadata !2025, null}
!2027 = metadata !{i32 564, i32 0, metadata !2025, null}
!2028 = metadata !{i32 568, i32 0, metadata !2029, null}
!2029 = metadata !{i32 786443, metadata !1822, i32 567, i32 0, metadata !5, i32 110} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2030 = metadata !{i32 569, i32 0, metadata !2029, null}
!2031 = metadata !{i32 570, i32 0, metadata !2029, null}
!2032 = metadata !{i32 574, i32 0, metadata !2033, null}
!2033 = metadata !{i32 786443, metadata !1822, i32 573, i32 0, metadata !5, i32 111} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2034 = metadata !{i32 575, i32 0, metadata !2033, null}
!2035 = metadata !{i32 585, i32 0, metadata !1827, null}
!2036 = metadata !{i32 590, i32 0, metadata !2037, null}
!2037 = metadata !{i32 786443, metadata !1826, i32 589, i32 0, metadata !5, i32 114} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2038 = metadata !{i32 591, i32 0, metadata !2037, null}
!2039 = metadata !{i32 592, i32 0, metadata !2037, null}
!2040 = metadata !{i32 596, i32 0, metadata !2041, null}
!2041 = metadata !{i32 786443, metadata !1826, i32 595, i32 0, metadata !5, i32 115} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2042 = metadata !{i32 597, i32 0, metadata !2041, null}
!2043 = metadata !{i32 601, i32 0, metadata !2044, null}
!2044 = metadata !{i32 786443, metadata !1826, i32 600, i32 0, metadata !5, i32 116} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2045 = metadata !{i32 602, i32 0, metadata !2044, null}
!2046 = metadata !{i32 603, i32 0, metadata !2044, null}
!2047 = metadata !{i32 13}
!2048 = metadata !{i32 608, i32 0, metadata !1825, null}
!2049 = metadata !{i32 609, i32 0, metadata !1825, null}
!2050 = metadata !{i32 617, i32 0, metadata !2051, null}
!2051 = metadata !{i32 786443, metadata !1779, i32 615, i32 0, metadata !5, i32 118} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2052 = metadata !{i32 620, i32 0, metadata !2051, null}
!2053 = metadata !{i32 623, i32 0, metadata !2054, null}
!2054 = metadata !{i32 786443, metadata !2055, i32 622, i32 0, metadata !5, i32 121} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2055 = metadata !{i32 786443, metadata !2051, i32 620, i32 0, metadata !5, i32 120} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2056 = metadata !{i32 16}
!2057 = metadata !{i32 624, i32 0, metadata !2054, null}
!2058 = metadata !{i32 625, i32 0, metadata !2054, null}
!2059 = metadata !{i32 629, i32 0, metadata !2060, null}
!2060 = metadata !{i32 786443, metadata !2055, i32 628, i32 0, metadata !5, i32 122} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2061 = metadata !{i32 630, i32 0, metadata !2060, null}
!2062 = metadata !{i32 631, i32 0, metadata !2060, null}
!2063 = metadata !{i32 632, i32 0, metadata !2060, null}
!2064 = metadata !{i32 636, i32 0, metadata !2065, null}
!2065 = metadata !{i32 786443, metadata !2055, i32 635, i32 0, metadata !5, i32 123} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2066 = metadata !{i32 637, i32 0, metadata !2065, null}
!2067 = metadata !{i32 638, i32 0, metadata !2065, null}
!2068 = metadata !{i32 642, i32 0, metadata !2069, null}
!2069 = metadata !{i32 786443, metadata !2055, i32 641, i32 0, metadata !5, i32 124} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2070 = metadata !{i32 643, i32 0, metadata !2069, null}
!2071 = metadata !{i32 653, i32 0, metadata !2072, null}
!2072 = metadata !{i32 786443, metadata !1779, i32 651, i32 0, metadata !5, i32 125} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2073 = metadata !{i32 658, i32 0, metadata !2074, null}
!2074 = metadata !{i32 786443, metadata !2075, i32 657, i32 0, metadata !5, i32 127} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2075 = metadata !{i32 786443, metadata !2072, i32 653, i32 0, metadata !5, i32 126} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2076 = metadata !{i32 659, i32 0, metadata !2074, null}
!2077 = metadata !{i32 660, i32 0, metadata !2074, null}
!2078 = metadata !{i32 664, i32 0, metadata !2079, null}
!2079 = metadata !{i32 786443, metadata !2075, i32 663, i32 0, metadata !5, i32 128} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2080 = metadata !{i32 665, i32 0, metadata !2079, null}
!2081 = metadata !{i32 669, i32 0, metadata !2082, null}
!2082 = metadata !{i32 786443, metadata !2075, i32 668, i32 0, metadata !5, i32 129} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2083 = metadata !{i32 670, i32 0, metadata !2082, null}
!2084 = metadata !{i32 671, i32 0, metadata !2082, null}
!2085 = metadata !{i32 675, i32 0, metadata !2086, null}
!2086 = metadata !{i32 786443, metadata !2075, i32 674, i32 0, metadata !5, i32 130} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2087 = metadata !{i32 676, i32 0, metadata !2086, null}
!2088 = metadata !{i32 677, i32 0, metadata !2086, null}
!2089 = metadata !{i32 684, i32 0, metadata !2090, null}
!2090 = metadata !{i32 786443, metadata !1779, i32 683, i32 0, metadata !5, i32 131} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2091 = metadata !{i32 697, i32 0, metadata !2092, null}
!2092 = metadata !{i32 786443, metadata !1779, i32 696, i32 0, metadata !5, i32 134} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2093 = metadata !{i32 710, i32 0, metadata !2094, null}
!2094 = metadata !{i32 786443, metadata !1779, i32 709, i32 0, metadata !5, i32 137} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2095 = metadata !{i32 723, i32 0, metadata !2096, null}
!2096 = metadata !{i32 786443, metadata !1779, i32 722, i32 0, metadata !5, i32 140} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2097 = metadata !{i32 737, i32 0, metadata !2098, null}
!2098 = metadata !{i32 786443, metadata !1779, i32 735, i32 0, metadata !5, i32 143} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2099 = metadata !{i32 740, i32 0, metadata !2098, null}
!2100 = metadata !{i32 22}
!2101 = metadata !{i32 741, i32 0, metadata !2098, null}
!2102 = metadata !{i32 742, i32 0, metadata !2098, null}
!2103 = metadata !{i32 747, i32 0, metadata !2104, null}
!2104 = metadata !{i32 786443, metadata !1779, i32 745, i32 0, metadata !5, i32 145} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2105 = metadata !{i32 751, i32 0, metadata !2104, null}
!2106 = metadata !{i32 754, i32 0, metadata !2104, null}
!2107 = metadata !{i32 755, i32 0, metadata !2104, null}
!2108 = metadata !{i32 760, i32 0, metadata !2109, null}
!2109 = metadata !{i32 786443, metadata !1779, i32 758, i32 0, metadata !5, i32 148} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2110 = metadata !{i32 763, i32 0, metadata !2109, null}
!2111 = metadata !{i32 24}
!2112 = metadata !{i32 764, i32 0, metadata !2109, null}
!2113 = metadata !{i32 765, i32 0, metadata !2109, null}
!2114 = metadata !{i32 770, i32 0, metadata !2115, null}
!2115 = metadata !{i32 786443, metadata !1779, i32 768, i32 0, metadata !5, i32 150} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2116 = metadata !{i32 25}
!2117 = metadata !{i32 778, i32 0, metadata !2118, null}
!2118 = metadata !{i32 786443, metadata !2115, i32 777, i32 0, metadata !5, i32 153} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2119 = metadata !{i32 779, i32 0, metadata !2118, null}
!2120 = metadata !{i32 781, i32 0, metadata !2115, null}
!2121 = metadata !{i32 784, i32 0, metadata !2115, null}
!2122 = metadata !{i32 785, i32 0, metadata !2115, null}
!2123 = metadata !{i32 789, i32 0, metadata !2124, null}
!2124 = metadata !{i32 786443, metadata !1779, i32 788, i32 0, metadata !5, i32 155} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2125 = metadata !{i32 794, i32 0, metadata !2126, null}
!2126 = metadata !{i32 786443, metadata !2127, i32 793, i32 0, metadata !5, i32 157} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2127 = metadata !{i32 786443, metadata !2124, i32 789, i32 0, metadata !5, i32 156} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2128 = metadata !{i32 795, i32 0, metadata !2126, null}
!2129 = metadata !{i32 807, i32 0, metadata !2130, null}
!2130 = metadata !{i32 786443, metadata !1779, i32 805, i32 0, metadata !5, i32 158} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2131 = metadata !{i32 808, i32 0, metadata !2130, null}
!2132 = metadata !{i32 817, i32 0, metadata !1579, null}
!2133 = metadata !{i32 818, i32 0, metadata !1579, null}
!2134 = metadata !{i32 819, i32 0, metadata !1579, null}
!2135 = metadata !{i32 821, i32 0, metadata !1579, null}
!2136 = metadata !{i32 822, i32 0, metadata !1579, null}
!2137 = metadata !{i32 823, i32 0, metadata !2138, null}
!2138 = metadata !{i32 786443, metadata !1579, i32 822, i32 0, metadata !5, i32 160} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2139 = metadata !{i32 824, i32 0, metadata !2138, null}
!2140 = metadata !{i32 825, i32 0, metadata !1579, null}
!2141 = metadata !{i32 826, i32 0, metadata !1579, null}
!2142 = metadata !{i32 827, i32 0, metadata !1579, null}
!2143 = metadata !{i32 830, i32 0, metadata !1579, null}
!2144 = metadata !{i32 831, i32 0, metadata !1579, null}
!2145 = metadata !{i32 833, i32 0, metadata !1613, null}
!2146 = metadata !{i32 843, i32 0, metadata !1622, null}
!2147 = metadata !{i32 844, i32 0, metadata !1622, null}
!2148 = metadata !{i32 845, i32 0, metadata !1622, null}
!2149 = metadata !{i32 846, i32 0, metadata !2150, null}
!2150 = metadata !{i32 786443, metadata !1622, i32 846, i32 0, metadata !5, i32 163} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2151 = metadata !{i32 852, i32 0, metadata !2152, null}
!2152 = metadata !{i32 786443, metadata !2153, i32 850, i32 0, metadata !5, i32 166} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2153 = metadata !{i32 786443, metadata !2154, i32 848, i32 0, metadata !5, i32 165} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2154 = metadata !{i32 786443, metadata !2150, i32 846, i32 0, metadata !5, i32 164} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2155 = metadata !{i32 853, i32 0, metadata !2152, null}
!2156 = metadata !{i32 872, i32 0, metadata !2157, null}
!2157 = metadata !{i32 786443, metadata !2158, i32 870, i32 0, metadata !5, i32 171} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2158 = metadata !{i32 786443, metadata !2159, i32 867, i32 0, metadata !5, i32 170} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2159 = metadata !{i32 786443, metadata !2152, i32 854, i32 0, metadata !5, i32 167} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2160 = metadata !{i32 857, i32 0, metadata !2161, null}
!2161 = metadata !{i32 786443, metadata !2159, i32 856, i32 0, metadata !5, i32 168} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2162 = metadata !{i32 896, i32 0, metadata !2163, null}
!2163 = metadata !{i32 786443, metadata !2164, i32 895, i32 0, metadata !5, i32 175} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2164 = metadata !{i32 786443, metadata !2153, i32 886, i32 0, metadata !5, i32 173} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2165 = metadata !{i32 907, i32 0, metadata !2166, null}
!2166 = metadata !{i32 786443, metadata !2164, i32 906, i32 0, metadata !5, i32 178} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2167 = metadata !{i32 913, i32 0, metadata !2168, null}
!2168 = metadata !{i32 786443, metadata !2164, i32 911, i32 0, metadata !5, i32 179} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2169 = metadata !{i32 925, i32 0, metadata !2164, null}
!2170 = metadata !{i32 847, i32 0, metadata !2154, null}
!2171 = metadata !{i32 848, i32 0, metadata !2154, null}
!2172 = metadata !{i32 854, i32 0, metadata !2152, null}
!2173 = metadata !{i32 7}
!2174 = metadata !{i32 858, i32 0, metadata !2161, null}
!2175 = metadata !{i32 859, i32 0, metadata !2161, null}
!2176 = metadata !{i32 863, i32 0, metadata !2177, null}
!2177 = metadata !{i32 786443, metadata !2159, i32 862, i32 0, metadata !5, i32 169} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2178 = metadata !{i32 864, i32 0, metadata !2177, null}
!2179 = metadata !{i32 1}
!2180 = metadata !{i32 868, i32 0, metadata !2158, null}
!2181 = metadata !{i32 869, i32 0, metadata !2158, null}
!2182 = metadata !{i32 870, i32 0, metadata !2158, null}
!2183 = metadata !{i32 871, i32 0, metadata !2157, null}
!2184 = metadata !{i32 873, i32 0, metadata !2157, null}
!2185 = metadata !{i32 874, i32 0, metadata !2157, null}
!2186 = metadata !{i32 876, i32 0, metadata !2158, null}
!2187 = metadata !{i32 879, i32 0, metadata !2158, null}
!2188 = metadata !{i32 880, i32 0, metadata !2158, null}
!2189 = metadata !{i32 888, i32 0, metadata !2164, null}
!2190 = metadata !{i32 889, i32 0, metadata !2164, null}
!2191 = metadata !{i32 890, i32 0, metadata !2192, null}
!2192 = metadata !{i32 786443, metadata !2164, i32 889, i32 0, metadata !5, i32 174} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2193 = metadata !{i32 891, i32 0, metadata !2192, null}
!2194 = metadata !{i32 892, i32 0, metadata !2192, null}
!2195 = metadata !{i32 893, i32 0, metadata !2192, null}
!2196 = metadata !{i32 895, i32 0, metadata !2164, null}
!2197 = metadata !{i32 897, i32 0, metadata !2198, null}
!2198 = metadata !{i32 786443, metadata !2163, i32 896, i32 0, metadata !5, i32 176} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2199 = metadata !{i32 898, i32 0, metadata !2198, null}
!2200 = metadata !{i32 899, i32 0, metadata !2198, null}
!2201 = metadata !{i32 900, i32 0, metadata !2198, null}
!2202 = metadata !{i32 902, i32 0, metadata !2203, null}
!2203 = metadata !{i32 786443, metadata !2163, i32 901, i32 0, metadata !5, i32 177} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2204 = metadata !{i32 2}
!2205 = metadata !{i32 908, i32 0, metadata !2166, null}
!2206 = metadata !{i32 909, i32 0, metadata !2166, null}
!2207 = metadata !{i32 912, i32 0, metadata !2168, null}
!2208 = metadata !{i32 914, i32 0, metadata !2168, null}
!2209 = metadata !{i32 6}
!2210 = metadata !{i32 915, i32 0, metadata !2168, null}
!2211 = metadata !{i32 916, i32 0, metadata !2168, null}
!2212 = metadata !{i32 919, i32 0, metadata !2213, null}
!2213 = metadata !{i32 786443, metadata !2164, i32 918, i32 0, metadata !5, i32 180} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2214 = metadata !{i32 920, i32 0, metadata !2213, null}
!2215 = metadata !{i32 921, i32 0, metadata !2213, null}
!2216 = metadata !{i32 922, i32 0, metadata !2213, null}
!2217 = metadata !{i32 932, i32 0, metadata !2164, null}
!2218 = metadata !{i32 933, i32 0, metadata !2164, null}
!2219 = metadata !{i32 938, i32 0, metadata !2220, null}
!2220 = metadata !{i32 786443, metadata !2153, i32 936, i32 0, metadata !5, i32 183} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2221 = metadata !{i32 943, i32 0, metadata !2222, null}
!2222 = metadata !{i32 786443, metadata !2223, i32 942, i32 0, metadata !5, i32 185} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2223 = metadata !{i32 786443, metadata !2220, i32 938, i32 0, metadata !5, i32 184} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2224 = metadata !{i32 944, i32 0, metadata !2222, null}
!2225 = metadata !{i32 945, i32 0, metadata !2222, null}
!2226 = metadata !{i32 946, i32 0, metadata !2222, null}
!2227 = metadata !{i32 950, i32 0, metadata !2228, null}
!2228 = metadata !{i32 786443, metadata !2223, i32 949, i32 0, metadata !5, i32 186} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2229 = metadata !{i32 951, i32 0, metadata !2228, null}
!2230 = metadata !{i32 952, i32 0, metadata !2228, null}
!2231 = metadata !{i32 958, i32 0, metadata !2232, null}
!2232 = metadata !{i32 786443, metadata !2223, i32 957, i32 0, metadata !5, i32 187} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2233 = metadata !{i32 959, i32 0, metadata !2232, null}
!2234 = metadata !{i32 960, i32 0, metadata !2232, null}
!2235 = metadata !{i32 968, i32 0, metadata !2236, null}
!2236 = metadata !{i32 786443, metadata !2153, i32 966, i32 0, metadata !5, i32 188} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2237 = metadata !{i32 971, i32 0, metadata !2238, null}
!2238 = metadata !{i32 786443, metadata !2239, i32 970, i32 0, metadata !5, i32 190} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2239 = metadata !{i32 786443, metadata !2236, i32 968, i32 0, metadata !5, i32 189} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2240 = metadata !{i32 972, i32 0, metadata !2238, null}
!2241 = metadata !{i32 973, i32 0, metadata !2238, null}
!2242 = metadata !{i32 977, i32 0, metadata !2243, null}
!2243 = metadata !{i32 786443, metadata !2239, i32 976, i32 0, metadata !5, i32 191} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2244 = metadata !{i32 978, i32 0, metadata !2243, null}
!2245 = metadata !{i32 979, i32 0, metadata !2243, null}
!2246 = metadata !{i32 983, i32 0, metadata !2247, null}
!2247 = metadata !{i32 786443, metadata !2239, i32 982, i32 0, metadata !5, i32 192} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2248 = metadata !{i32 984, i32 0, metadata !2247, null}
!2249 = metadata !{i32 994, i32 0, metadata !2250, null}
!2250 = metadata !{i32 786443, metadata !2153, i32 992, i32 0, metadata !5, i32 193} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2251 = metadata !{i32 999, i32 0, metadata !2252, null}
!2252 = metadata !{i32 786443, metadata !2253, i32 998, i32 0, metadata !5, i32 195} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2253 = metadata !{i32 786443, metadata !2250, i32 994, i32 0, metadata !5, i32 194} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2254 = metadata !{i32 1000, i32 0, metadata !2252, null}
!2255 = metadata !{i32 1008, i32 0, metadata !2256, null}
!2256 = metadata !{i32 786443, metadata !2253, i32 1007, i32 0, metadata !5, i32 196} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2257 = metadata !{i32 1009, i32 0, metadata !2256, null}
!2258 = metadata !{i32 1017, i32 0, metadata !2259, null}
!2259 = metadata !{i32 786443, metadata !2153, i32 1015, i32 0, metadata !5, i32 197} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2260 = metadata !{i32 1031, i32 0, metadata !2261, null}
!2261 = metadata !{i32 786443, metadata !2153, i32 1029, i32 0, metadata !5, i32 200} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2262 = metadata !{i32 1043, i32 0, metadata !2153, null}
!2263 = metadata !{i32 1051, i32 0, metadata !1622, null}
!2264 = metadata !{i32 1052, i32 0, metadata !1622, null}
!2265 = metadata !{i32 1053, i32 0, metadata !1622, null}
!2266 = metadata !{i32 1054, i32 0, metadata !1622, null}
!2267 = metadata !{i32 1055, i32 0, metadata !1622, null}
!2268 = metadata !{i32 1057, i32 0, metadata !1622, null}
!2269 = metadata !{i32 1058, i32 0, metadata !1622, null}
!2270 = metadata !{i32 1059, i32 0, metadata !1622, null}
!2271 = metadata !{i32 1060, i32 0, metadata !1622, null}
!2272 = metadata !{i32 1061, i32 0, metadata !1622, null}
!2273 = metadata !{i32 1063, i32 0, metadata !1622, null}
!2274 = metadata !{i32 1064, i32 0, metadata !1622, null}
!2275 = metadata !{i32 1065, i32 0, metadata !1622, null}
!2276 = metadata !{i32 1066, i32 0, metadata !1622, null}
!2277 = metadata !{i32 1068, i32 0, metadata !1637, null}
!2278 = metadata !{i8 0}
!2279 = metadata !{i32 1078, i32 0, metadata !1645, null}
!2280 = metadata !{i32 1079, i32 0, metadata !1645, null}
!2281 = metadata !{i32 1081, i32 0, metadata !1645, null}
!2282 = metadata !{i32 1082, i32 0, metadata !1645, null}
!2283 = metadata !{i32 1083, i32 0, metadata !1645, null}
!2284 = metadata !{i32 1084, i32 0, metadata !1645, null}
!2285 = metadata !{i32 1085, i32 0, metadata !1645, null}
!2286 = metadata !{i32 1086, i32 0, metadata !1645, null}
!2287 = metadata !{i32 1087, i32 0, metadata !1645, null}
!2288 = metadata !{i32 1138, i32 0, metadata !2289, null}
!2289 = metadata !{i32 786443, metadata !2290, i32 1102, i32 0, metadata !5, i32 208} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2290 = metadata !{i32 786443, metadata !2291, i32 1096, i32 0, metadata !5, i32 206} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2291 = metadata !{i32 786443, metadata !2292, i32 1094, i32 0, metadata !5, i32 205} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2292 = metadata !{i32 786443, metadata !1645, i32 1087, i32 0, metadata !5, i32 204} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2293 = metadata !{i32 1162, i32 0, metadata !2294, null}
!2294 = metadata !{i32 786443, metadata !2295, i32 1159, i32 0, metadata !5, i32 217} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2295 = metadata !{i32 786443, metadata !2296, i32 1157, i32 0, metadata !5, i32 216} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2296 = metadata !{i32 786443, metadata !2291, i32 1150, i32 0, metadata !5, i32 214} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2297 = metadata !{i32 1094, i32 0, metadata !2292, null}
!2298 = metadata !{i32 1097, i32 0, metadata !2290, null}
!2299 = metadata !{i32 1098, i32 0, metadata !2300, null}
!2300 = metadata !{i32 786443, metadata !2290, i32 1097, i32 0, metadata !5, i32 207} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2301 = metadata !{i32 1099, i32 0, metadata !2300, null}
!2302 = metadata !{i32 1100, i32 0, metadata !2300, null}
!2303 = metadata !{i32 1102, i32 0, metadata !2290, null}
!2304 = metadata !{i32 1113, i32 0, metadata !2305, null}
!2305 = metadata !{i32 786443, metadata !2289, i32 1104, i32 0, metadata !5, i32 209} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2306 = metadata !{i32 1114, i32 0, metadata !2305, null}
!2307 = metadata !{i32 1115, i32 0, metadata !2305, null}
!2308 = metadata !{i32 1116, i32 0, metadata !2305, null}
!2309 = metadata !{i32 1126, i32 0, metadata !2310, null}
!2310 = metadata !{i32 786443, metadata !2289, i32 1125, i32 0, metadata !5, i32 211} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2311 = metadata !{i32 1127, i32 0, metadata !2310, null}
!2312 = metadata !{i32 1360, i32 0, metadata !1645, null}
!2313 = metadata !{i32 1133, i32 0, metadata !2314, null}
!2314 = metadata !{i32 786443, metadata !2289, i32 1132, i32 0, metadata !5, i32 212} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2315 = metadata !{i32 1134, i32 0, metadata !2314, null}
!2316 = metadata !{i32 1135, i32 0, metadata !2314, null}
!2317 = metadata !{i32 1142, i32 0, metadata !2318, null}
!2318 = metadata !{i32 786443, metadata !2289, i32 1140, i32 0, metadata !5, i32 213} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2319 = metadata !{i32 1143, i32 0, metadata !2318, null}
!2320 = metadata !{i32 1146, i32 0, metadata !2290, null}
!2321 = metadata !{i32 1147, i32 0, metadata !2290, null}
!2322 = metadata !{i32 1151, i32 0, metadata !2296, null}
!2323 = metadata !{i32 1152, i32 0, metadata !2324, null}
!2324 = metadata !{i32 786443, metadata !2296, i32 1151, i32 0, metadata !5, i32 215} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2325 = metadata !{i32 1153, i32 0, metadata !2324, null}
!2326 = metadata !{i32 1154, i32 0, metadata !2324, null}
!2327 = metadata !{i32 1155, i32 0, metadata !2324, null}
!2328 = metadata !{i32 1157, i32 0, metadata !2296, null}
!2329 = metadata !{i32 1163, i32 0, metadata !2330, null}
!2330 = metadata !{i32 786443, metadata !2294, i32 1162, i32 0, metadata !5, i32 218} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2331 = metadata !{i32 1164, i32 0, metadata !2330, null}
!2332 = metadata !{i32 1169, i32 0, metadata !2333, null}
!2333 = metadata !{i32 786443, metadata !2295, i32 1168, i32 0, metadata !5, i32 219} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2334 = metadata !{i32 1170, i32 0, metadata !2333, null}
!2335 = metadata !{i32 1171, i32 0, metadata !2333, null}
!2336 = metadata !{i32 1181, i32 0, metadata !2337, null}
!2337 = metadata !{i32 786443, metadata !2295, i32 1180, i32 0, metadata !5, i32 221} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2338 = metadata !{i32 1182, i32 0, metadata !2337, null}
!2339 = metadata !{i32 1187, i32 0, metadata !2295, null}
!2340 = metadata !{i32 1190, i32 0, metadata !2341, null}
!2341 = metadata !{i32 786443, metadata !2295, i32 1189, i32 0, metadata !5, i32 222} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2342 = metadata !{i32 1191, i32 0, metadata !2341, null}
!2343 = metadata !{i32 1192, i32 0, metadata !2341, null}
!2344 = metadata !{i32 1195, i32 0, metadata !2296, null}
!2345 = metadata !{i32 1196, i32 0, metadata !2296, null}
!2346 = metadata !{i32 1200, i32 0, metadata !2347, null}
!2347 = metadata !{i32 786443, metadata !2291, i32 1199, i32 0, metadata !5, i32 223} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2348 = metadata !{i32 1201, i32 0, metadata !2349, null}
!2349 = metadata !{i32 786443, metadata !2347, i32 1200, i32 0, metadata !5, i32 224} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2350 = metadata !{i32 1202, i32 0, metadata !2349, null}
!2351 = metadata !{i32 1203, i32 0, metadata !2349, null}
!2352 = metadata !{i32 1204, i32 0, metadata !2349, null}
!2353 = metadata !{i32 1206, i32 0, metadata !2347, null}
!2354 = metadata !{i32 1211, i32 0, metadata !2355, null}
!2355 = metadata !{i32 786443, metadata !2356, i32 1208, i32 0, metadata !5, i32 226} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2356 = metadata !{i32 786443, metadata !2347, i32 1206, i32 0, metadata !5, i32 225} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2357 = metadata !{i32 1212, i32 0, metadata !2355, null}
!2358 = metadata !{i32 1213, i32 0, metadata !2355, null}
!2359 = metadata !{i32 1217, i32 0, metadata !2360, null}
!2360 = metadata !{i32 786443, metadata !2356, i32 1216, i32 0, metadata !5, i32 227} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2361 = metadata !{i32 1218, i32 0, metadata !2360, null}
!2362 = metadata !{i32 1219, i32 0, metadata !2360, null}
!2363 = metadata !{i32 1229, i32 0, metadata !2364, null}
!2364 = metadata !{i32 786443, metadata !2356, i32 1228, i32 0, metadata !5, i32 229} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2365 = metadata !{i32 1230, i32 0, metadata !2364, null}
!2366 = metadata !{i32 1235, i32 0, metadata !2356, null}
!2367 = metadata !{i32 1238, i32 0, metadata !2368, null}
!2368 = metadata !{i32 786443, metadata !2356, i32 1237, i32 0, metadata !5, i32 230} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2369 = metadata !{i32 1239, i32 0, metadata !2368, null}
!2370 = metadata !{i32 1240, i32 0, metadata !2368, null}
!2371 = metadata !{i32 1243, i32 0, metadata !2347, null}
!2372 = metadata !{i32 1244, i32 0, metadata !2347, null}
!2373 = metadata !{i32 1248, i32 0, metadata !2374, null}
!2374 = metadata !{i32 786443, metadata !2291, i32 1247, i32 0, metadata !5, i32 231} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2375 = metadata !{i32 1249, i32 0, metadata !2376, null}
!2376 = metadata !{i32 786443, metadata !2374, i32 1248, i32 0, metadata !5, i32 232} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2377 = metadata !{i32 1250, i32 0, metadata !2376, null}
!2378 = metadata !{i32 1251, i32 0, metadata !2376, null}
!2379 = metadata !{i32 1252, i32 0, metadata !2376, null}
!2380 = metadata !{i32 1254, i32 0, metadata !2374, null}
!2381 = metadata !{i32 1259, i32 0, metadata !2382, null}
!2382 = metadata !{i32 786443, metadata !2383, i32 1256, i32 0, metadata !5, i32 234} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2383 = metadata !{i32 786443, metadata !2374, i32 1254, i32 0, metadata !5, i32 233} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2384 = metadata !{i32 1260, i32 0, metadata !2382, null}
!2385 = metadata !{i32 1262, i32 0, metadata !2386, null}
!2386 = metadata !{i32 786443, metadata !2387, i32 1261, i32 0, metadata !5, i32 236} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2387 = metadata !{i32 786443, metadata !2382, i32 1261, i32 0, metadata !5, i32 235} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2388 = metadata !{i32 1261, i32 0, metadata !2387, null}
!2389 = metadata !{i32 1265, i32 0, metadata !2386, null}
!2390 = metadata !{i32 1269, i32 0, metadata !2386, null}
!2391 = metadata !{i32 1266, i32 0, metadata !2392, null}
!2392 = metadata !{i32 786443, metadata !2386, i32 1265, i32 0, metadata !5, i32 238} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2393 = metadata !{i32 1271, i32 0, metadata !2382, null}
!2394 = metadata !{i32 1281, i32 0, metadata !2395, null}
!2395 = metadata !{i32 786443, metadata !2383, i32 1280, i32 0, metadata !5, i32 240} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2396 = metadata !{i32 1282, i32 0, metadata !2395, null}
!2397 = metadata !{i32 1287, i32 0, metadata !2383, null}
!2398 = metadata !{i32 1290, i32 0, metadata !2399, null}
!2399 = metadata !{i32 786443, metadata !2383, i32 1289, i32 0, metadata !5, i32 241} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2400 = metadata !{i32 1291, i32 0, metadata !2399, null}
!2401 = metadata !{i32 1292, i32 0, metadata !2399, null}
!2402 = metadata !{i32 1295, i32 0, metadata !2374, null}
!2403 = metadata !{i32 1296, i32 0, metadata !2374, null}
!2404 = metadata !{i32 1300, i32 0, metadata !2405, null}
!2405 = metadata !{i32 786443, metadata !2291, i32 1299, i32 0, metadata !5, i32 242} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2406 = metadata !{i32 1301, i32 0, metadata !2405, null}
!2407 = metadata !{i32 1302, i32 0, metadata !2408, null}
!2408 = metadata !{i32 786443, metadata !2405, i32 1301, i32 0, metadata !5, i32 243} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2409 = metadata !{i32 5}
!2410 = metadata !{i32 1303, i32 0, metadata !2408, null}
!2411 = metadata !{i32 1304, i32 0, metadata !2408, null}
!2412 = metadata !{i32 1305, i32 0, metadata !2408, null}
!2413 = metadata !{i32 1307, i32 0, metadata !2405, null}
!2414 = metadata !{i32 1308, i32 0, metadata !2405, null}
!2415 = metadata !{i32 1309, i32 0, metadata !2416, null}
!2416 = metadata !{i32 786443, metadata !2405, i32 1308, i32 0, metadata !5, i32 244} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2417 = metadata !{i32 1310, i32 0, metadata !2416, null}
!2418 = metadata !{i32 1311, i32 0, metadata !2416, null}
!2419 = metadata !{i32 1312, i32 0, metadata !2416, null}
!2420 = metadata !{i32 1318, i32 0, metadata !2421, null}
!2421 = metadata !{i32 786443, metadata !2291, i32 1317, i32 0, metadata !5, i32 245} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2422 = metadata !{i32 1319, i32 0, metadata !2423, null}
!2423 = metadata !{i32 786443, metadata !2421, i32 1318, i32 0, metadata !5, i32 246} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2424 = metadata !{i32 1320, i32 0, metadata !2423, null}
!2425 = metadata !{i32 1321, i32 0, metadata !2426, null}
!2426 = metadata !{i32 786443, metadata !2423, i32 1320, i32 0, metadata !5, i32 247} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2427 = metadata !{i32 1322, i32 0, metadata !2426, null}
!2428 = metadata !{i32 1323, i32 0, metadata !2426, null}
!2429 = metadata !{i32 1324, i32 0, metadata !2426, null}
!2430 = metadata !{i32 1332, i32 0, metadata !2421, null}
!2431 = metadata !{i32 1333, i32 0, metadata !2421, null}
!2432 = metadata !{i32 1334, i32 0, metadata !2433, null}
!2433 = metadata !{i32 786443, metadata !2421, i32 1333, i32 0, metadata !5, i32 249} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2434 = metadata !{i32 1335, i32 0, metadata !2433, null}
!2435 = metadata !{i32 1336, i32 0, metadata !2436, null}
!2436 = metadata !{i32 786443, metadata !2433, i32 1335, i32 0, metadata !5, i32 250} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2437 = metadata !{i32 1337, i32 0, metadata !2436, null}
!2438 = metadata !{i32 1338, i32 0, metadata !2436, null}
!2439 = metadata !{i32 1339, i32 0, metadata !2436, null}
!2440 = metadata !{i32 1342, i32 0, metadata !2441, null}
!2441 = metadata !{i32 786443, metadata !2433, i32 1341, i32 0, metadata !5, i32 251} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2442 = metadata !{i32 1343, i32 0, metadata !2441, null}
!2443 = metadata !{i32 1352, i32 0, metadata !1645, null}
!2444 = metadata !{i32 1353, i32 0, metadata !1645, null}
!2445 = metadata !{i32 1354, i32 0, metadata !2446, null}
!2446 = metadata !{i32 786443, metadata !1645, i32 1353, i32 0, metadata !5, i32 252} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2447 = metadata !{i32 1355, i32 0, metadata !2446, null}
!2448 = metadata !{i32 1356, i32 0, metadata !2446, null}
!2449 = metadata !{i32 1357, i32 0, metadata !1645, null}
!2450 = metadata !{i32 1358, i32 0, metadata !1645, null}
!2451 = metadata !{i32 1361, i32 0, metadata !2452, null}
!2452 = metadata !{i32 786443, metadata !1645, i32 1360, i32 0, metadata !5, i32 253} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2453 = metadata !{i32 1364, i32 0, metadata !2452, null}
!2454 = metadata !{i32 1365, i32 0, metadata !2452, null}
!2455 = metadata !{i32 1366, i32 0, metadata !2452, null}
!2456 = metadata !{i32 1367, i32 0, metadata !2452, null}
!2457 = metadata !{i32 1369, i32 0, metadata !1645, null}
!2458 = metadata !{i32 1370, i32 0, metadata !1645, null}
!2459 = metadata !{i32 1371, i32 0, metadata !2460, null}
!2460 = metadata !{i32 786443, metadata !1645, i32 1370, i32 0, metadata !5, i32 255} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2461 = metadata !{i32 1372, i32 0, metadata !2460, null}
!2462 = metadata !{i32 1373, i32 0, metadata !2460, null}
!2463 = metadata !{i32 1374, i32 0, metadata !1645, null}
!2464 = metadata !{i32 1375, i32 0, metadata !1645, null}
!2465 = metadata !{i32 1376, i32 0, metadata !1645, null}
!2466 = metadata !{i32 1378, i32 0, metadata !1660, null}
!2467 = metadata !{i32 1383, i32 0, metadata !1679, null}
!2468 = metadata !{i32 1384, i32 0, metadata !2469, null}
!2469 = metadata !{i32 786443, metadata !1679, i32 1384, i32 0, metadata !5, i32 257} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2470 = metadata !{i32 1459, i32 0, metadata !2471, null}
!2471 = metadata !{i32 786443, metadata !2472, i32 1454, i32 0, metadata !5, i32 275} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2472 = metadata !{i32 786443, metadata !2473, i32 1386, i32 0, metadata !5, i32 259} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2473 = metadata !{i32 786443, metadata !2469, i32 1384, i32 0, metadata !5, i32 258} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2474 = metadata !{i32 1508, i32 0, metadata !2475, null}
!2475 = metadata !{i32 786443, metadata !2472, i32 1500, i32 0, metadata !5, i32 285} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2476 = metadata !{i32 1509, i32 0, metadata !2475, null}
!2477 = metadata !{i32 1511, i32 0, metadata !2478, null}
!2478 = metadata !{i32 786443, metadata !2475, i32 1509, i32 0, metadata !5, i32 288} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2479 = metadata !{i32 1385, i32 0, metadata !2473, null}
!2480 = metadata !{i32 1386, i32 0, metadata !2473, null}
!2481 = metadata !{i32 1390, i32 0, metadata !2482, null}
!2482 = metadata !{i32 786443, metadata !2472, i32 1388, i32 0, metadata !5, i32 260} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2483 = metadata !{i32 1403, i32 0, metadata !2484, null}
!2484 = metadata !{i32 786443, metadata !2472, i32 1402, i32 0, metadata !5, i32 263} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2485 = metadata !{i32 1416, i32 0, metadata !2486, null}
!2486 = metadata !{i32 786443, metadata !2472, i32 1415, i32 0, metadata !5, i32 266} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2487 = metadata !{i32 1429, i32 0, metadata !2488, null}
!2488 = metadata !{i32 786443, metadata !2472, i32 1428, i32 0, metadata !5, i32 269} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2489 = metadata !{i32 1442, i32 0, metadata !2490, null}
!2490 = metadata !{i32 786443, metadata !2472, i32 1441, i32 0, metadata !5, i32 272} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2491 = metadata !{i32 1456, i32 0, metadata !2471, null}
!2492 = metadata !{i32 1460, i32 0, metadata !2471, null}
!2493 = metadata !{i32 1461, i32 0, metadata !2471, null}
!2494 = metadata !{i32 1466, i32 0, metadata !2495, null}
!2495 = metadata !{i32 786443, metadata !2472, i32 1464, i32 0, metadata !5, i32 277} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2496 = metadata !{i32 1470, i32 0, metadata !2495, null}
!2497 = metadata !{i32 1473, i32 0, metadata !2495, null}
!2498 = metadata !{i32 1474, i32 0, metadata !2495, null}
!2499 = metadata !{i32 1479, i32 0, metadata !2500, null}
!2500 = metadata !{i32 786443, metadata !2472, i32 1477, i32 0, metadata !5, i32 280} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2501 = metadata !{i32 1482, i32 0, metadata !2500, null}
!2502 = metadata !{i32 1483, i32 0, metadata !2500, null}
!2503 = metadata !{i32 1484, i32 0, metadata !2500, null}
!2504 = metadata !{i32 1489, i32 0, metadata !2505, null}
!2505 = metadata !{i32 786443, metadata !2472, i32 1487, i32 0, metadata !5, i32 282} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2506 = metadata !{i32 1493, i32 0, metadata !2505, null}
!2507 = metadata !{i32 1496, i32 0, metadata !2505, null}
!2508 = metadata !{i32 1497, i32 0, metadata !2505, null}
!2509 = metadata !{i32 1502, i32 0, metadata !2475, null}
!2510 = metadata !{i32 1505, i32 0, metadata !2475, null}
!2511 = metadata !{i32 10}
!2512 = metadata !{i32 1510, i32 0, metadata !2478, null}
!2513 = metadata !{i32 1512, i32 0, metadata !2478, null}
!2514 = metadata !{i32 1518, i32 0, metadata !2515, null}
!2515 = metadata !{i32 786443, metadata !2472, i32 1516, i32 0, metadata !5, i32 289} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2516 = metadata !{i32 1532, i32 0, metadata !2517, null}
!2517 = metadata !{i32 786443, metadata !2518, i32 1531, i32 0, metadata !5, i32 293} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2518 = metadata !{i32 786443, metadata !2515, i32 1518, i32 0, metadata !5, i32 290} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2519 = metadata !{i32 1533, i32 0, metadata !2517, null}
!2520 = metadata !{i32 1545, i32 0, metadata !2521, null}
!2521 = metadata !{i32 786443, metadata !2472, i32 1543, i32 0, metadata !5, i32 294} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2522 = metadata !{i32 1548, i32 0, metadata !2523, null}
!2523 = metadata !{i32 786443, metadata !2524, i32 1547, i32 0, metadata !5, i32 296} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2524 = metadata !{i32 786443, metadata !2521, i32 1545, i32 0, metadata !5, i32 295} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2525 = metadata !{i32 1549, i32 0, metadata !2523, null}
!2526 = metadata !{i32 1559, i32 0, metadata !2527, null}
!2527 = metadata !{i32 786443, metadata !2472, i32 1557, i32 0, metadata !5, i32 297} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2528 = metadata !{i32 1560, i32 0, metadata !2527, null}
!2529 = metadata !{i32 1569, i32 0, metadata !1679, null}
!2530 = metadata !{i32 1570, i32 0, metadata !1679, null}
!2531 = metadata !{i32 1571, i32 0, metadata !1679, null}
!2532 = metadata !{i32 1574, i32 0, metadata !1679, null}
!2533 = metadata !{i32 1573, i32 0, metadata !1679, null}
!2534 = metadata !{i32 1575, i32 0, metadata !2535, null}
!2535 = metadata !{i32 786443, metadata !1679, i32 1574, i32 0, metadata !5, i32 299} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2536 = metadata !{i32 1576, i32 0, metadata !2535, null}
!2537 = metadata !{i32 1577, i32 0, metadata !1679, null}
!2538 = metadata !{i32 1578, i32 0, metadata !1679, null}
!2539 = metadata !{i32 1579, i32 0, metadata !1679, null}
!2540 = metadata !{i32 1580, i32 0, metadata !1679, null}
!2541 = metadata !{i32 1582, i32 0, metadata !1699, null}
!2542 = metadata !{i32 1587, i32 0, metadata !1709, null}
!2543 = metadata !{i32 1588, i32 0, metadata !1709, null}
!2544 = metadata !{i32 1589, i32 0, metadata !1709, null}
!2545 = metadata !{i32 1592, i32 0, metadata !1709, null}
!2546 = metadata !{i32 1597, i32 0, metadata !2547, null}
!2547 = metadata !{i32 786443, metadata !2548, i32 1596, i32 0, metadata !5, i32 304} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2548 = metadata !{i32 786443, metadata !1709, i32 1596, i32 0, metadata !5, i32 303} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2549 = metadata !{i32 1598, i32 0, metadata !2547, null}
!2550 = metadata !{i32 1601, i32 0, metadata !2547, null}
!2551 = metadata !{i32 1602, i32 0, metadata !2552, null}
!2552 = metadata !{i32 786443, metadata !2547, i32 1601, i32 0, metadata !5, i32 306} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2553 = metadata !{i32 1603, i32 0, metadata !2552, null}
!2554 = metadata !{i32 1604, i32 0, metadata !2552, null}
!2555 = metadata !{i32 1605, i32 0, metadata !2552, null}
!2556 = metadata !{i32 1610, i32 0, metadata !2547, null}
!2557 = metadata !{i32 1612, i32 0, metadata !2558, null}
!2558 = metadata !{i32 786443, metadata !2547, i32 1610, i32 0, metadata !5, i32 308} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2559 = metadata !{i32 1596, i32 0, metadata !2548, null}
!2560 = metadata !{i32 1619, i32 0, metadata !1709, null}
!2561 = metadata !{i32 1620, i32 0, metadata !2562, null}
!2562 = metadata !{i32 786443, metadata !1709, i32 1619, i32 0, metadata !5, i32 310} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2563 = metadata !{i32 1621, i32 0, metadata !2562, null}
!2564 = metadata !{i32 1624, i32 0, metadata !1709, null}
!2565 = metadata !{i32 1626, i32 0, metadata !1712, null}
!2566 = metadata !{i32 1634, i32 0, metadata !1721, null}
!2567 = metadata !{i32 1635, i32 0, metadata !2568, null}
!2568 = metadata !{i32 786443, metadata !1721, i32 1635, i32 0, metadata !5, i32 312} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2569 = metadata !{i32 1637, i32 0, metadata !2570, null}
!2570 = metadata !{i32 786443, metadata !2568, i32 1635, i32 0, metadata !5, i32 313} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2571 = metadata !{i32 1643, i32 0, metadata !2572, null}
!2572 = metadata !{i32 786443, metadata !2570, i32 1642, i32 0, metadata !5, i32 315} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2573 = metadata !{i32 1649, i32 0, metadata !2572, null}
!2574 = metadata !{i32 1640, i32 0, metadata !2570, null}
!2575 = metadata !{i32 1641, i32 0, metadata !2570, null}
!2576 = metadata !{i32 1642, i32 0, metadata !2570, null}
!2577 = metadata !{i32 1646, i32 0, metadata !2578, null}
!2578 = metadata !{i32 786443, metadata !2572, i32 1646, i32 0, metadata !5, i32 317} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2579 = metadata !{i32 1650, i32 0, metadata !2580, null}
!2580 = metadata !{i32 786443, metadata !2572, i32 1649, i32 0, metadata !5, i32 319} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2581 = metadata !{i32 1651, i32 0, metadata !2582, null}
!2582 = metadata !{i32 786443, metadata !2580, i32 1650, i32 0, metadata !5, i32 320} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2583 = metadata !{i32 1655, i32 0, metadata !2572, null}
!2584 = metadata !{i32 1659, i32 0, metadata !2572, null}
!2585 = metadata !{i32 1660, i32 0, metadata !2586, null}
!2586 = metadata !{i32 786443, metadata !2572, i32 1659, i32 0, metadata !5, i32 322} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2587 = metadata !{i32 1662, i32 0, metadata !2588, null}
!2588 = metadata !{i32 786443, metadata !2572, i32 1662, i32 0, metadata !5, i32 323} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2589 = metadata !{i32 1665, i32 0, metadata !2572, null}
!2590 = metadata !{i32 1666, i32 0, metadata !2572, null}
!2591 = metadata !{i32 1667, i32 0, metadata !2572, null}
!2592 = metadata !{i32 1669, i32 0, metadata !2572, null}
!2593 = metadata !{i32 1670, i32 0, metadata !2594, null}
!2594 = metadata !{i32 786443, metadata !2572, i32 1669, i32 0, metadata !5, i32 325} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2595 = metadata !{i32 1671, i32 0, metadata !2594, null}
!2596 = metadata !{i32 1675, i32 0, metadata !2572, null}
!2597 = metadata !{i32 1676, i32 0, metadata !2598, null}
!2598 = metadata !{i32 786443, metadata !2572, i32 1675, i32 0, metadata !5, i32 327} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2599 = metadata !{i32 1681, i32 0, metadata !1721, null}
!2600 = metadata !{i32 1683, i32 0, metadata !1728, null}
!2601 = metadata !{i32 1687, i32 0, metadata !1738, null}
!2602 = metadata !{i32 1690, i32 0, metadata !1738, null}
!2603 = metadata !{i32 1691, i32 0, metadata !1738, null}
!2604 = metadata !{i32 1693, i32 0, metadata !2605, null}
!2605 = metadata !{i32 786443, metadata !1738, i32 1693, i32 0, metadata !5, i32 330} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2606 = metadata !{i32 1695, i32 0, metadata !2607, null}
!2607 = metadata !{i32 786443, metadata !2605, i32 1693, i32 0, metadata !5, i32 331} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2608 = metadata !{i32 1696, i32 0, metadata !2607, null}
!2609 = metadata !{i32 1699, i32 0, metadata !2607, null}
!2610 = metadata !{i32 1700, i32 0, metadata !2611, null}
!2611 = metadata !{i32 786443, metadata !2607, i32 1699, i32 0, metadata !5, i32 333} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2612 = metadata !{i32 786689, metadata !1751, metadata !"p", metadata !82, i32 16777282, metadata !87, i32 0, metadata !2613} ; [ DW_TAG_arg_variable ] [p] [line 66]
!2613 = metadata !{i32 1701, i32 0, metadata !2611, null}
!2614 = metadata !{i32 66, i32 0, metadata !1751, metadata !2613}
!2615 = metadata !{i32 786689, metadata !1751, metadata !"last", metadata !82, i32 33554498, metadata !87, i32 0, metadata !2613} ; [ DW_TAG_arg_variable ] [last] [line 66]
!2616 = metadata !{i8 38}
!2617 = metadata !{i32 786689, metadata !1751, metadata !"c", metadata !82, i32 50331714, metadata !88, i32 0, metadata !2613} ; [ DW_TAG_arg_variable ] [c] [line 66]
!2618 = metadata !{i32 68, i32 0, metadata !2619, metadata !2613}
!2619 = metadata !{i32 786443, metadata !1751, i32 67, i32 0, metadata !82, i32 338} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.h]
!2620 = metadata !{i32 70, i32 0, metadata !2621, metadata !2613}
!2621 = metadata !{i32 786443, metadata !2619, i32 68, i32 0, metadata !82, i32 339} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_string.h]
!2622 = metadata !{i32 74, i32 0, metadata !2621, metadata !2613}
!2623 = metadata !{i32 1702, i32 0, metadata !2611, null}
!2624 = metadata !{i32 1703, i32 0, metadata !2625, null}
!2625 = metadata !{i32 786443, metadata !2611, i32 1702, i32 0, metadata !5, i32 334} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2626 = metadata !{i32 1704, i32 0, metadata !2625, null}
!2627 = metadata !{i32 1705, i32 0, metadata !2611, null}
!2628 = metadata !{i32 1706, i32 0, metadata !2611, null}
!2629 = metadata !{i32 1710, i32 0, metadata !1738, null}
!2630 = metadata !{i32 1712, i32 0, metadata !1740, null}
!2631 = metadata !{i32 1716, i32 0, metadata !1749, null}
!2632 = metadata !{i32 786689, metadata !1751, metadata !"p", metadata !82, i32 16777282, metadata !87, i32 0, metadata !2633} ; [ DW_TAG_arg_variable ] [p] [line 66]
!2633 = metadata !{i32 1717, i32 0, metadata !1749, null}
!2634 = metadata !{i32 66, i32 0, metadata !1751, metadata !2633}
!2635 = metadata !{i32 786689, metadata !1751, metadata !"last", metadata !82, i32 33554498, metadata !87, i32 0, metadata !2633} ; [ DW_TAG_arg_variable ] [last] [line 66]
!2636 = metadata !{i8 63}
!2637 = metadata !{i32 786689, metadata !1751, metadata !"c", metadata !82, i32 50331714, metadata !88, i32 0, metadata !2633} ; [ DW_TAG_arg_variable ] [c] [line 66]
!2638 = metadata !{i32 68, i32 0, metadata !2619, metadata !2633}
!2639 = metadata !{i32 70, i32 0, metadata !2621, metadata !2633}
!2640 = metadata !{i32 74, i32 0, metadata !2621, metadata !2633}
!2641 = metadata !{i32 1718, i32 0, metadata !1749, null}
!2642 = metadata !{i32 1719, i32 0, metadata !2643, null}
!2643 = metadata !{i32 786443, metadata !1749, i32 1718, i32 0, metadata !5, i32 336} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2644 = metadata !{i32 1720, i32 0, metadata !2643, null}
!2645 = metadata !{i32 1721, i32 0, metadata !2643, null}
!2646 = metadata !{i32 1722, i32 0, metadata !2643, null}
!2647 = metadata !{i32 1723, i32 0, metadata !2643, null}
!2648 = metadata !{i32 1725, i32 0, metadata !2649, null}
!2649 = metadata !{i32 786443, metadata !1749, i32 1724, i32 0, metadata !5, i32 337} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http_parse.c]
!2650 = metadata !{i32 1727, i32 0, metadata !1749, null}
