require '/Users/sloveless/Development/projects/hairballs/lib/hairballs'

require '/Users/sloveless/Development/projects/hairballs/lib/hairballs/themes/turboladen'
require '/Users/sloveless/Development/projects/hairballs/lib/hairballs/themes/turboladen_rails'

require '/Users/sloveless/Development/projects/hairballs/lib/hairballs/plugins/awesome_print'
require '/Users/sloveless/Development/projects/hairballs/lib/hairballs/plugins/irb_history'
require '/Users/sloveless/Development/projects/hairballs/lib/hairballs/plugins/interesting_methods'
require '/Users/sloveless/Development/projects/hairballs/lib/hairballs/plugins/object_ri'
require '/Users/sloveless/Development/projects/hairballs/lib/hairballs/plugins/colorize_json'
require '/Users/sloveless/Development/projects/hairballs/lib/hairballs/plugins/wirble'
require '/Users/sloveless/Development/projects/hairballs/lib/hairballs/plugins/quick_benchmark'

if Hairballs.rails?
  Hairballs.use_theme(:turboladen_rails)
  #Hairballs.use_plugin(:awesome_print)
else
  Hairballs.use_theme(:turboladen)
end

Hairballs.load_plugin(:irb_history, global_history_file: false)
Hairballs.load_plugin(:interesting_methods)
Hairballs.load_plugin(:object_ri)
Hairballs.load_plugin(:wirble)
Hairballs.load_plugin(:colorize_json)
Hairballs.load_plugin(:quick_benchmark)
