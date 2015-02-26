module FooRequest
  def get_foos
    get_for Foo
  end

  def post_foos
    create_for Foo
  end

  def get_foos_create
    new_for Foo
  end

  def get_foos_show
    show_for Foo
  end

  def delete_foos
    delete_for Foo
  end

  def get_foos_edit
    edit_for Foo
  end

  def put_foos
    put_for Foo
  end
end