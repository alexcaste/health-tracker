class RenameActionsToFeats < ActiveRecord::Migration
def change
    rename_table :actions, :feats
end
end
