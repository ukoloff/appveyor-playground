class TestA < Minitest::Test

   def test_a
     assert true
     AppVeyor::Worker.message "I'm #{name}", "Some info..."
   end

   def test_b
     assert false
   end

   def test_c
     skip
     assert false
   end

end
