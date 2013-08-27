module YmBadges
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include YmCore::Generators::Migration
      include YmCore::Generators::Ability

      source_root File.expand_path("../templates", __FILE__)
      desc "Installs YmBadges."

      def manifest
        # examples ->
        # copy_file "models/page.rb", "app/models/page.rb"
        # if should_add_abilities?('Page')
        #   add_ability(:open, "can :show, Page, :draft => false")
        # end
        # try_migration_template "migrations/create_pages.rb", "db/migrate/create_pages"

        copy_file "models/badge.rb", "app/models/badge.rb"
        copy_file "models/badge_awarding.rb", "app/models/badge_awarding.rb"
        copy_file "controllers/badges_controller.rb", "app/controllers/badges_controller.rb"

        try_migration_template "migrations/create_badges.rb", "db/migrate/create_badges"
        try_migration_template "migrations/create_badge_awardings.rb", "db/migrate/create_badge_awardings"
        try_migration_template "migrations/add_award_message_to_badges.rb", "db/migrate/add_award_message_to_badges"
      end

    end
  end
end