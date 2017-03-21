get '/' do
  @students = Student.all
  @pairs = Pair.all

  erb :pareamento
end

post '/count' do
  @user = params[:user]

  @pairing = Pairing.find_by(student_id: @user["name_students"], pair_id: @user["name_pairs"])
  # @pairing2 = Pairing.find_by(student_id: @user["name_pairs"], pair_id: @user["name_students"])

  if @pairing == nil
    @pairing = Pairing.create(student_id: @user["name_students"], pair_id: @user["name_pairs"], count: 1)
  else
    @pairing.count += 1
    @pairing.save!
  end


  #
  # if @pairing == nil && @pairing2 == nil
  #   @pairing = Pairing.create(student_id: @user["name_students"], pair_id: @user["name_pairs"], count: 1)
  # else
  #   if @pairing.count > @pairing2.count
  # end



# elsif @pairing != nil
#   @pairing.count += 1
#   @pairing.save!
# elsif @pairing2 != nil
#   @pairing2.count += 1
#   @pairing2.save!



  puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
  puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
  puts @pairing.inspect
  puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

  redirect '/'
end
