require "test_helper"

class SysAdminTest < ActiveSupport::TestCase
  def setup
    @sys_admin = SysAdmin.new(first_name: "John", last_name: "Doe", email: "john@example.com")
  end

  test "should be valid" do
    assert @sys_admin.valid?
  end
end
