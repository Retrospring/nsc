require 'nsc/version'
require 'nsc/util'
require 'inquirer'

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
    final_msg = if body.strip.empty?
      "#{type}: #{msg}"
    else
      "#{type}: #{msg}\n\n#{body}"
    end
    p final_msg
    exec "git commit -m '#{final_msg}'"
  end
end
