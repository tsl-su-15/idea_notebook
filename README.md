# Idea Notebook

## Part 2: Associations

Create functionality so that users can attach comments to ideas. The comments don't need to be tied to users, just to a single idea. You'll need to make the decisions on what columns should be included. Eventually, you should be able to see a comment's idea on a comment's show page and all associated comments on an idea's show page.

inlcude in the gemfile:

    gem 'starter_generators', :git => "git://github.com/rbetina/starter_generators", :branch => "panels"

use the command:

    rails g starter:resource <model name> <column1 name>:<column1 data type> <column2 name>:<column2 data type>

to generate new resources
