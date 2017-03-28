get '/' do
  @students = Student.all
  @pairs = Pair.all
  @pairings = Pairing.all

  erb :pareamento
end

post '/count' do
  @user = params[:user]

  @pairing = Pairing.find_by(student_id: @user["name_students"], pair_id: @user["name_pairs"])

  if @pairing == nil
    @pairing = Pairing.find_by(student_id: @user["name_pairs"], pair_id: @user["name_students"])
  end

  if @pairing == nil
    @pairing = Pairing.create(student_id: @user["name_students"], pair_id: @user["name_pairs"], count: 1)
  else
    @pairing.count += 1
    @pairing.save!
  end

  redirect '/'
end
