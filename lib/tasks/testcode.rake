namespace :testcode do
  unless Rails.env == 'production'
    require 'rubocop/rake_task'
    require 'haml_lint/rake_task'

    desc 'Execute rubocop'
    RuboCop::RakeTask.new(:rubocop) do |tsk|
      tsk.fail_on_error = false
    end

    desc 'Execute haml-lint'
    task haml_lint: :environment do
      puts 'Running HAML-LINT...'
      puts `haml-lint --color .`
    end

    desc 'Execute rails_best_practices'
    task rbp: :environment do
      require 'rails_best_practices'
      puts 'Running Rails Best Practices...'
      analyzer = RailsBestPractices::Analyzer.new('.')
      analyzer.analyze
      puts analyzer.output
    end

  end
end

task :testcode do
  %w(rubocop haml_lint rbp).each { |task| Rake::Task["testcode:#{task}"].invoke }
end
