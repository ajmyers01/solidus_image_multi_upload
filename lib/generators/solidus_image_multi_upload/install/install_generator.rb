module SolidusImageMultiUpload
  module Generators
    class InstallGenerator < Rails::Generators::Base

      def add_javascripts
        append_file 'app/assets/javascripts/admin/all.js', "//= require admin/solidus_image_multi_upload\n"
      end

      def add_stylesheets
        inject_into_file 'app/assets/stylesheets/admin/all.css', " *= require admin/solidus_image_multi_upload\n", :before => /\*\//, :verbose => true
      end

    end
  end
end
