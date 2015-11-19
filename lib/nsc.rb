require 'nsc/version'
require 'nsc/util'
require 'inquirer'
require 'cocaine'

class Nsc
  desc 'commit', 'commit with nsc'
  def commit
    type = Nsc::Util::SHORTTYPES[Ask.list('Choose a type', Nsc::Util::TYPES)]
    msg = Ask.input 'Enter a commit message'
    body = Ask.input 'Enter an optional commit body'

    construct_commit type, msg, body
  end

  private

  def construct_commit(type, msg, body)
    # somehow it breaks if you do it with template strings
    final_msg = "#{type}: #{msg}"
    cmd = Cocaine::CommandLine.new("git", body.strip.empty? ? "commit -m '#{final_msg}'" : "commit -m '#{final_msg}' -m '#{body}'")
    cmd.run
  end
end
