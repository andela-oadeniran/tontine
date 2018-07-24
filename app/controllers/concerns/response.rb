module Response
  def json_response(hash_object, status = :ok)
    render json: hash_object, status: status
  end
end