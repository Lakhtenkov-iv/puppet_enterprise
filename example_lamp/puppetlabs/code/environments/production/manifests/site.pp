File { backup => false }

notify { 'Hello': }

node 'agent1.mshome.net' {
  include role::lamp
}

node 'agent2.mshome.net' {
  
}

node /^.+\.mshome\.net$/ {
  notify { 'Default .mshome.net domain config appies': }
}

node default {
  notify { 'Default config appies': }
}
