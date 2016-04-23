class TestA < Minitest::Test

   def test_a
     assert true
   end

   def test_b
     assert false
   end

   def test_c
     skip
     assert false
   end

end
