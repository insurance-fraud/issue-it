class PaymentsController < ApplicationController
  def pay
    user = User.find_by(pan: params[:pan],
                        security_code: params[:security_code],
                        card_holder_name: params[:card_holder_name],
                        expiry_date: params[:expiry_date])
    payment = Payment.create(pan: params[:pan],
                             security_code: params[:security_code],
                             card_holder_name: params[:card_holder_name],
                             expiry_date: params[:expiry_date],
                             acquirer_order_id: params[:acquirer_order_id],
                             acquirer_order_timestamp: params[:acquirer_order_timestamp],
                             issuer_order_id: SecureRandom.hex(10),
                             issuer_order_timestamp: DateTime.now)

    amount = params[:amount].to_f

    if user.total_balance - user.reserved_balance >= amount
      user.update(reserved_balance: user.reserved_balance + amount)

      render json: { success: true,
                     acquirer_order_id: payment.acquirer_order_id,
                     acquirer_order_timestamp: payment.acquirer_order_timestamp,
                     issuer_order_id: payment.issuer_order_id,
                     issuer_order_timestamp: payment.issuer_order_timestamp }
    else
      render json: { message: 'Not enough money' }, status: :error
    end
  end
end
