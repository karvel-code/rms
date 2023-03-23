class Unit < ApplicationRecord
  belongs_to :apartment

  after_create_commit -> { broadcast_append_to 'units' }
  after_update_commit -> { broadcast_replace_to 'units' }
  after_destroy_commit -> { broadcast_remove_to 'units' }
end
