# Generated with RailsBricks
# Initial seed file to use with Devise User Model
print "---------- Generating Seed Data ----------\n"
# Temporary admin account
u = User.new(
    email: "admin@example.com",
    password: "devPassword1",
    password_confirmation: "devPassword1",
    admin: true
)
# u.skip_confirmation!
u.save!
# generate user accounts
(1..10).each do |i|
	u = User.new(
		email: "user#{i}@example.com",
		password: "Password1",
		password_confirmation: "Password1",
		first_name: "user",
		last_name: "\##{i}",
    image: File.new('app/assets/images/default_icon.jpg')
	)
	# u.skip_confirmation!
	u.save!
	print i, " user(s) created with id ", u.id, "\n"
	# generate dummy posts
  (1..6).each do |i|
		p = Post.new(
			title: (0...8).map { (65 + rand(26)).chr }.join,
			user: u,
			content_md: "this is a descriptive description!",
			year_created: (2000 + i),
			medium: (0...4).map { (65 + rand(26)).chr }.join,
			dimension_height: (1 + rand(69)),
			dimension_width: (1 + rand(69)),
			measurement: 'in',
			weight_in_pounds: rand(22),
			price: (rand(1000000)) * (0.01),
			quantity: rand(33),
			image: File.new('app/assets/images/test.png')
    )
		p.save!
		print i, "..."
  end
	print " posts created!\n"
end

# generate dummy comments
(1..100).each do |i|
  #-1)+1 in comment poster rand is to exclude the Admin account at 0
	@comment_post = Post.offset(rand(Post.count)).first
	@comment_poster = User.offset(rand(User.count-1)+1).first
	c = Comment.new(
		message: (0...25).map { (65 + rand(26)).chr }.join,
		user_id: @comment_poster.id,
		post_id: @comment_post.id,
		user: @comment_poster
	)
	print @comment_poster.fullname + " commented on " + @comment_post.user.fullname + "'s post\n"
	c.save!
end
print "---------- Seed Data Generated ----------\n"
