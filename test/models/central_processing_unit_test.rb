require 'test_helper'

class CentralProcessingUnitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save empty cpu" do
  pc=CentralProcessingUnit.new
  pc.save
  refute pc.valid?
end

  test "should save cpu" do
  pc1=CentralProcessingUnit.create([ChipMake:'AMD', ChipModel:'3900X'])
  pc1.save #fix this one!!!!!!!!!!!!!!!!!!!!!!!
  assert pc1.valid?
end

end