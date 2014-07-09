Deface::Override.new(:virtual_path => "spree/admin/shared/_menu",
                     :name => "suppliers_admin_tab",
                     :insert_bottom => "[data-hook='admin_tabs']",
                     :text => "<%= tab(:suppliers, :label => 'suppliers') %>")
