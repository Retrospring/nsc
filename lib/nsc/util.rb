require 'pastel'

class Nsc
  module Util
    pastel = Pastel.new
    TYPES = [
      pastel.bold('feat') + ': a new feature',
      pastel.bold('fix') + ': a bug fix',
      pastel.bold('docs') + ': documentation only changes',
      pastel.bold('style') + ': changes that do not affect the meaning of the code',
      pastel.bold('refactor') + ': a code change that neither fixes a bug nor adds a new feature',
      pastel.bold('perf') + ': a code change that improves performance',
      pastel.bold('test') + ': adds missing tests',
      pastel.bold('chore') + ': changes to the build process or auxiliary tools or libraries such as documentation generation'
    ]

    SHORTTYPES = [
      'feat',
      'fix',
      'docs',
      'style',
      'refactor',
      'perf',
      'test',
      'chore'
    ]
  end
end
