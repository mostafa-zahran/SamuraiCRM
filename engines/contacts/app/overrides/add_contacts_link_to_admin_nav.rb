Deface::Override.new(:virtual_path =>	"samurai/admin/admin/index",
                     :name => "add_contacts_link_to_admin_nav",
                     :insert_after => "[data-samurai-hook='admin_nav']",
                     :partial => "overrides/admin_contacts_link",
                     :namespaced =>	true)

Deface::Override.new(:virtual_path =>	"samurai/admin/users/index",
                     :name => "add_contacts_link_to_admin_nav",
                     :insert_after => "[data-samurai-hook='admin_nav']",
                     :partial => "overrides/admin_contacts_link",
                     :namespaced =>	true)

Deface::Override.new(:virtual_path =>	"samurai/admin/contacts/index",
                     :name => "add_contacts_link_to_admin_nav",
                     :insert_after => "[data-samurai-hook='admin_nav']",
                     :partial => "overrides/admin_contacts_link",
                     :namespaced =>	true)

Deface::Override.new(:virtual_path =>	"samurai/admin/tasks/index",
                     :name => "add_contacts_link_to_admin_nav",
                     :insert_after => "[data-samurai-hook='admin_nav']",
                     :partial => "overrides/admin_contacts_link",
                     :namespaced =>	true)