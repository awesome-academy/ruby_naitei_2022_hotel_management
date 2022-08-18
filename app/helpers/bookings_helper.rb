module BookingsHelper
  def compact_text text
    "#{text[0..100]}..."
  end

  def check_status status
    case status
    when booking.pending?
      content_tag(:span, "Chờ phê duyệt", class: "badge badge-secondary")
    when booking.approve?
      content_tag(:span, "Phê duyệt", class: "badge badge-success")
    when booking.refuse?
      content_tag(:span, "Từ chối bởi admin", class: "badge badge-danger")
    when booking.cancel?
      content_tag(:span, "Người dùng hủy booking", class: "badge badge-primary")
    when booking.paid?
      content_tag(:span, "Người dùng đã thanh toán", class: "badge badge-info")
    end
  end
end
