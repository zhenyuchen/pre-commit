require 'pre-commit/checks/grep'

module PreCommit
  module Checks
    class ConsoleLog < Grep

      def files_filter(staged_files)
        staged_files.grep(/\.(js|coffee)$/)
      end

      def extra_grep
        " | grep -v \/\/"
      end

      def message
        "console.log found:\n"
      end

      def pattern
        '-e "console\\.log"'
      end

      def self.description
        "Finds javascript files with 'console.log'."
      end

    end
  end
end
