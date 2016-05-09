Deface::Override.new(:virtual_path =>	"samurai/admin/admin/index",
                     :name => "add_tasks_list_to_admin",
                     :insert_after => "[data-samurai-hook='admin_dashboard']",
                     :partial => "overrides/admin_tasks_list",
                     :namespaced =>	true)