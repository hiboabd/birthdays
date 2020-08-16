require 'birthday_list'

describe BirthdayDatabase do
  it 'check for store_birthday method' do
    expect(subject).to respond_to(:store_birthday)
  end

  it 'store_birthday takes three arguments' do
    expect(subject).to respond_to(:store_birthday).with(4).arguments
  end

  it 'store_birthday method returns store message' do
    expect(subject.store_birthday("James", "23", "March", "1990")).to eq "Stored James: 23 March 1990"
  end

  it 'print_birthday method takes one argument' do
    expect(subject).to respond_to(:print_birthday).with(1).argument
  end

  it 'print_birthday method returns friend' do
    friend = "James"
    subject.store_birthday(friend, "23", "March", "1990")
    expect(subject.print_birthday(friend)).to eq "James"
  end

  it 'print_birthday method returns birthday database' do
    subject.store_birthday("James", "23", "March", "1990")
    expect(subject.print_birthday(database)).to eq "James: 23 March 1990"
  end

end
