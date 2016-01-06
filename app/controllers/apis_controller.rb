class ApisController < ApplicationController
  def index
  @approved_codesnippets = 'Codesnippet.where(include: "yes")'
  @approved_colorpalettes = 'Colorpalette.where(include: "yes")'
  @approved_hidefimages = 'Hidefimage.where(include: "yes")'
  @approved_onepage = 'Onepage.where(include: "yes")'
  @approved_typographies = Typography.where(include: "yes")
  @approved_uxuis = 'Uxui.where(include: "yes")'
  end
  def typography
    @approved_typographies = Typography.where(include: "yes")
  end
end