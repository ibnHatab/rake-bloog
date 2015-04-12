
describe Post do
  before do
    @it = Post.new
  end

  it "start with blank attributes" do
    @it.title.must_be_nil
    @it.body.must_be_nil
  end

  it "supports setting attributes in the initializer" do
    it = Post.new(title: "mytitle", body: "mybody")
    it.title.must_equal "mytitle"
    it.body.must_equal "mybody"
  end

end
