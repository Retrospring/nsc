# rubocop:disable Metrics/LineLength

require 'nsc/version'
require 'nsc/util'
require 'inquirer'
require 'cocaine'

class Nsc
  desc 'commit', 'commit with nsc'
  option :add, aliases: :a, type: :boolean
  def commit
    type = Nsc::Util::SHORTTYPES[Ask.list('Choose a type', Nsc::Util::TYPES)]
    msg = Ask.input 'Enter a commit message'
    body = Ask.input 'Enter an optional commit body'

    Cocaine::CommandLine.new('git', 'add --all').run if options[:add]
    construct_commit type, msg, body
  end

  map 'c' => 'commit', 'a' => 'commit -a'
  default_task :commit

  private

  def construct_commit(type, msg, body)
    # somehow it breaks if you do it with template strings
    final_msg = "#{type}: #{msg}"
    cmd = Cocaine::CommandLine.new('git', body.strip.empty? ? "commit -m '#{final_msg}'" : "commit -m '#{final_msg}' -m '#{body}'")
    cmd.run
  end
end
