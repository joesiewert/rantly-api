module ObjectHelpers

  def create_rant
    Rant.create!(
      title: 'Rant Test',
      body: 'Rant, rant, rant!'
    )
  end

end
