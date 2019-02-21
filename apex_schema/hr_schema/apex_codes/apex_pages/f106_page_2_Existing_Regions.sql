set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2016.08.24'
,p_release=>'5.1.2.00.09'
,p_default_workspace_id=>5220838258408829
,p_default_application_id=>106
,p_default_owner=>'RND'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 106 - Project_HR
--
-- Application Export:
--   Application:     106
--   Name:            Project_HR
--   Date and Time:   14:13 Thursday February 21, 2019
--   Exported By:     RND
--   Flashback:       0
--   Export Type:     Page Export
--   Version:         5.1.2.00.09
--   Instance ID:     211660612165098
--

prompt --application/pages/delete_00002
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>2);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_api.create_page(
 p_id=>2
,p_user_interface_id=>wwv_flow_api.id(5733510828061976)
,p_name=>'Existing Regions'
,p_page_mode=>'NORMAL'
,p_step_title=>'Existing Regions'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'N'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'RND'
,p_last_upd_yyyymmddhh24miss=>'20190221141240'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(5742716231066500)
,p_name=>'Existing Regions'
,p_template=>wwv_flow_api.id(5699923711061903)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'N'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "REGION_ID", ',
'"REGION_NAME"',
'from "#OWNER#"."REGIONS" ',
'  ',
''))
,p_source_type=>'NATIVE_SQL_REPORT'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(5709959778061907)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5743407524066507)
,p_query_column_id=>1
,p_column_alias=>'REGION_ID'
,p_column_display_sequence=>1
,p_column_link=>'f?p=#APP_ID#:3:#APP_SESSION#::::P3_REGION_ID:#REGION_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="Edit">'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'RND'
,p_ref_table_name=>'REGIONS'
,p_ref_column_name=>'REGION_ID'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(5743899734066510)
,p_query_column_id=>2
,p_column_alias=>'REGION_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Region Name'
,p_heading_alignment=>'LEFT'
,p_ref_schema=>'RND'
,p_ref_table_name=>'REGIONS'
,p_ref_column_name=>'REGION_NAME'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5745744899066510)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5742716231066500)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(5722741716061920)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5744836138066510)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(5742716231066500)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5745300710066510)
,p_event_id=>wwv_flow_api.id(5744836138066510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5742716231066500)
,p_stop_execution_on_error=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5746165362066510)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(5745744899066510)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5746654445066510)
,p_event_id=>wwv_flow_api.id(5746165362066510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(5742716231066500)
,p_stop_execution_on_error=>'Y'
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
