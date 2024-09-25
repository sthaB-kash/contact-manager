Pagy::DEFAULT[:limit] = 5 # items per page
Pagy::DEFAULT[:size]  = 9 # nav bar links

# Better user experience handled automatically
require 'pagy/extras/overflow'
Pagy::DEFAULT[:overflow] = :last_page
