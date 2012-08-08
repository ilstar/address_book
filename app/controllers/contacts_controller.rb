class ContactsController < ApplicationController
  def index
    @contacts = [
      ['Andy Yao', '+8612345678', '25, Mar', 'Engineer'],
      ['Bo Fu', '+8612345678', '6, Jun', 'Engineer'],
      ['Carmen Tian', '+8612345678', '10, Feb', 'Engineer'],
      ['Chang Cheng', '+8612345678', '10, Feb', 'Engineer'],
      ['Fred Liang', '+8612345678', '10, Feb', 'Engineer'],
      ['Jason Lai', '+8612345678', '10, Feb', 'Engineer'],
      ['Jasper Fu', '+8612345678', '10, Feb', 'Engineer'],
      ['Kevin Xu', '+8612345678', '10, Feb', 'Engineer'],
      ['Lay Zhu', '+8612345678', '10, Feb', 'Engineer'],
      ['Nemo Hu', '+8612345678', '10, Feb', 'Engineer'],
      ['Ray Huang', '+8612345678', '10, Feb', 'Engineer'],
      ['Rebecca Pang', '+8612345678', '10, Feb', 'Engineer'],
      ['Richard Huang', '+8612345678', '10, Feb', 'Engineer'],
      ['Rong Yang', '+8612345678', '10, Feb', 'Engineer'],
      ['Tin Tian', '+8612345678', '10, Feb', 'Engineer'],
      ['Vincent Xie', '+8612345678', '10, Feb', 'Engineer'],
      ['XingKui Wang', '+8612345678', '10, Feb', 'Engineer']
    ].map do |person|
      {
        name: person[0].split(' ').first,
        avatar: "/assets/avatar/#{person[0].split(' ').first.downcase}.png",
        phone: person[1],
        desc: "#{person[3]}   #{person[2]}"
      }
    end

    respond_to do |format|
      format.html { }
      format.json {
        render json: []
      }
    end
  end
end
