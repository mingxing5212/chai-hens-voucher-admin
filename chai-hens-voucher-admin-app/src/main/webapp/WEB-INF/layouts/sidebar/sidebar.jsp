<%@ page contentType="text/html;charset=UTF-8"%>
<div class="page-sidebar-wrapper">
    <!-- BEGIN SIDEBAR -->
    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
    <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
    <div class="page-sidebar navbar-collapse collapse">
        <!-- BEGIN SIDEBAR MENU -->
        <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
        <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
        <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
        <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
        <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
        <!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
        <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
            <!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
            <li class="sidebar-toggler-wrapper hide">
                <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                <div class="sidebar-toggler"> </div>
                <!-- END SIDEBAR TOGGLER BUTTON -->
            </li>
            <!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
            <li class="sidebar-search-wrapper">
                <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                <!-- DOC: Apply "sidebar-search-bordered" class the below search form to have bordered search box -->
                <!-- DOC: Apply "sidebar-search-bordered sidebar-search-solid" class the below search form to have bordered & solid search box -->
                <form class="sidebar-search  " action="page_general_search_3.html" method="POST">
                    <a href="javascript:;" class="remove">
                        <i class="icon-close"></i>
                    </a>
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="查找...">
                            <span class="input-group-btn">
                                <a href="javascript:;" class="btn submit">
                                    <i class="icon-magnifier"></i>
                                </a>
                            </span>
                    </div>
                </form>
                <!-- END RESPONSIVE QUICK SEARCH FORM -->
            </li>
            <li class="nav-item start active open">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-wallet"></i>
                    <span class="title">卡券中心</span>
                    <span class="selected"></span>
                    <span class="arrow open"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item start active open">
                        <a href="${ctx}/vouchers/cash" class="nav-link ">
                            <i class="icon-bar-chart"></i>
                            <span class="title">代金券</span>
                            <span class="selected"></span>
                        </a>
                    </li>
                    <li class="nav-item start ">
                        <a href="dashboard_2.html" class="nav-link ">
                            <i class="icon-bulb"></i>
                            <span class="title">折扣券</span>
                            <span class="badge badge-success">1</span>
                        </a>
                    </li>
                    <li class="nav-item start ">
                        <a href="dashboard_3.html" class="nav-link ">
                            <i class="icon-graph"></i>
                            <span class="title">礼品券</span>
                            <span class="badge badge-danger">5</span>
                        </a>
                    </li>
                    <li class="nav-item start ">
                        <a href="dashboard_2.html" class="nav-link ">
                            <i class="icon-bulb"></i>
                            <span class="title">会员卡</span>
                            <span class="badge badge-success">1</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="heading">
                <h3 class="uppercase">用户关系管理</h3>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-diamond"></i>
                    <span class="title">店铺管理</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="ui_colors.html" class="nav-link ">
                            <span class="title">Color Library</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_general.html" class="nav-link ">
                            <span class="title">General Components</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_buttons.html" class="nav-link ">
                            <span class="title">Buttons</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_confirmations.html" class="nav-link ">
                            <span class="title">Popover Confirmations</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_icons.html" class="nav-link ">
                            <span class="title">Font Icons</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_socicons.html" class="nav-link ">
                            <span class="title">Social Icons</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_typography.html" class="nav-link ">
                            <span class="title">Typography</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_tabs_accordions_navs.html" class="nav-link ">
                            <span class="title">Tabs, Accordions &amp; Navs</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_timeline.html" class="nav-link ">
                            <span class="title">Timeline</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_tree.html" class="nav-link ">
                            <span class="title">Tree View</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="javascript:;" class="nav-link nav-toggle">
                            <span class="title">Page Progress Bar</span>
                            <span class="arrow"></span>
                        </a>
                        <ul class="sub-menu">
                            <li class="nav-item ">
                                <a href="ui_page_progress_style_1.html" class="nav-link "> Flash </a>
                            </li>
                            <li class="nav-item ">
                                <a href="ui_page_progress_style_2.html" class="nav-link "> Big Counter </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_blockui.html" class="nav-link ">
                            <span class="title">Block UI</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_bootstrap_growl.html" class="nav-link ">
                            <span class="title">Bootstrap Growl Notifications</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_notific8.html" class="nav-link ">
                            <span class="title">Notific8 Notifications</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_toastr.html" class="nav-link ">
                            <span class="title">Toastr Notifications</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_bootbox.html" class="nav-link ">
                            <span class="title">Bootbox Dialogs</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_alerts_api.html" class="nav-link ">
                            <span class="title">Metronic Alerts API</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_session_timeout.html" class="nav-link ">
                            <span class="title">Session Timeout</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_idle_timeout.html" class="nav-link ">
                            <span class="title">User Idle Timeout</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_modals.html" class="nav-link ">
                            <span class="title">Modals</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_extended_modals.html" class="nav-link ">
                            <span class="title">Extended Modals</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_tiles.html" class="nav-link ">
                            <span class="title">Tiles</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_datepaginator.html" class="nav-link ">
                            <span class="title">Date Paginator</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="ui_nestable.html" class="nav-link ">
                            <span class="title">Nestable List</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-puzzle"></i>
                    <span class="title">会员管理</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="components_date_time_pickers.html" class="nav-link ">
                            <span class="title">Date &amp; Time Pickers</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_color_pickers.html" class="nav-link ">
                            <span class="title">Color Pickers</span>
                            <span class="badge badge-danger">2</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_select2.html" class="nav-link ">
                            <span class="title">Select2 Dropdowns</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_select.html" class="nav-link ">
                            <span class="title">Bootstrap Select</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_multi_select.html" class="nav-link ">
                            <span class="title">Multi Select</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_select_splitter.html" class="nav-link ">
                            <span class="title">Select Splitter</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_typeahead.html" class="nav-link ">
                            <span class="title">Typeahead Autocomplete</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_tagsinput.html" class="nav-link ">
                            <span class="title">Bootstrap Tagsinput</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_switch.html" class="nav-link ">
                            <span class="title">Bootstrap Switch</span>
                            <span class="badge badge-success">6</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_maxlength.html" class="nav-link ">
                            <span class="title">Bootstrap Maxlength</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_fileinput.html" class="nav-link ">
                            <span class="title">Bootstrap File Input</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_bootstrap_touchspin.html" class="nav-link ">
                            <span class="title">Bootstrap Touchspin</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_form_tools.html" class="nav-link ">
                            <span class="title">Form Widgets &amp; Tools</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_context_menu.html" class="nav-link ">
                            <span class="title">Context Menu</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_editors.html" class="nav-link ">
                            <span class="title">Markdown &amp; WYSIWYG Editors</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_code_editors.html" class="nav-link ">
                            <span class="title">Code Editors</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_ion_sliders.html" class="nav-link ">
                            <span class="title">Ion Range Sliders</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_noui_sliders.html" class="nav-link ">
                            <span class="title">NoUI Range Sliders</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="components_knob_dials.html" class="nav-link ">
                            <span class="title">Knob Circle Dials</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-settings"></i>
                    <span class="title">用户管理</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="form_controls.html" class="nav-link ">
                                        <span class="title">Bootstrap Form
                                            <br>Controls</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_controls_md.html" class="nav-link ">
                                        <span class="title">Material Design
                                            <br>Form Controls</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_validation.html" class="nav-link ">
                            <span class="title">Form Validation</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_validation_states_md.html" class="nav-link ">
                                        <span class="title">Material Design
                                            <br>Form Validation States</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_validation_md.html" class="nav-link ">
                                        <span class="title">Material Design
                                            <br>Form Validation</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_layouts.html" class="nav-link ">
                            <span class="title">Form Layouts</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_input_mask.html" class="nav-link ">
                            <span class="title">Form Input Mask</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_editable.html" class="nav-link ">
                            <span class="title">Form X-editable</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_wizard.html" class="nav-link ">
                            <span class="title">Form Wizard</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_icheck.html" class="nav-link ">
                            <span class="title">iCheck Controls</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_image_crop.html" class="nav-link ">
                            <span class="title">Image Cropping</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_fileupload.html" class="nav-link ">
                            <span class="title">Multiple File Upload</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="form_dropzone.html" class="nav-link ">
                            <span class="title">Dropzone File Upload</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item  ">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-bulb"></i>
                    <span class="title">系统配置</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="elements_steps.html" class="nav-link ">
                            <span class="title">Steps</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="elements_lists.html" class="nav-link ">
                            <span class="title">Lists</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="elements_ribbons.html" class="nav-link ">
                            <span class="title">Ribbons</span>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- END SIDEBAR MENU -->
        <!-- END SIDEBAR MENU -->
    </div>
    <!-- END SIDEBAR -->
</div>