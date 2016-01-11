require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')

get('/') do
  erb(:index)
end

get('/triangle') do
  sideA = params[:sideA].to_f()
  sideB = params[:sideB].to_f()
  sideC = params[:sideC].to_f()
  @user_triangle = Triangle.new(sideA, sideB, sideC)

  @triangle_output = ""
  if @user_triangle.equilateral?()
    @triangle_output << 'an equilateral'
  elsif @user_triangle.isosceles?()
    @triangle_output << 'an isosceles'
  else
    @triangle_output << 'a scalene'
  end

  if @user_triangle.right_triangle?()
    @triangle_output << ' right'
  end

  @triangle_output << ' triangle'

  erb(:triangle)
end
