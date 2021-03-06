require_relative 'bundle_provider'

module Grably
  module Libs
    class GithubProvider < BundleProvider # :nodoc:
      include Provider

      def initialize(p = {})
        super('github', p) do |project, revision|
          "https://github.com/#{project}/tarball/#{revision}"
        end
      end

      def self.config_var
        'github'
      end
    end
  end
end
