# db/seeds.rb

puts "Clearing old posts..."
Post.destroy_all

puts "Creating sample posts..."
Post.create!([
  { title: "First Post", content: "Hello, Tailwind world!" },
  { title: "Learning Rails", content: "Rails + Tailwind is a powerful combo." },
  { title: "Utility-first CSS", content: "Tailwind helps keep styling consistent and quick." },
])

puts "Created #{Post.count} posts."

# db/seeds.rb

puts "Clearing old data..."
Comment.destroy_all
Post.destroy_all

puts "Creating sample posts..."
p1 = Post.create!(title: "First Post", content: "Hello, Tailwind world!")
p2 = Post.create!(title: "Learning Rails", content: "Rails + Tailwind is a powerful combo.")
p3 = Post.create!(title: "Utility-first CSS", content: "Tailwind helps keep styling consistent and quick.")

puts "Creating comments..."
p1.comments.create!(content: "Great post!")
p1.comments.create!(content: "Thanks for this info.")

p2.comments.create!(content: "I love using Tailwind with Rails!")
p2.comments.create!(content: "Can you share more examples?")

p3.comments.create!(content: "Utility classes are so handy!")
p3.comments.create!(content: "I’ll try them in my next project.")

puts "Created #{Post.count} posts and #{Comment.count} comments."