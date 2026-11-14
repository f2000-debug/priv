//
//  ImguiTools.cpp
//  Dolphins
//
//  t.me/UltimateEngine
//

#include "imgui_tools.h"

void HelpMarker(const char *desc) {
    ImGui::TextColored(ImVec4(1.0f, 0.0f, 0.0f, 1.0f), "(?)");
    if (ImGui::IsItemHovered()) {
        ImGui::BeginTooltip();
        ImGui::PushTextWrapPos(ImGui::GetFontSize() * 35.0f);
        ImGui::TextUnformatted(desc);
        ImGui::PopTextWrapPos();
        ImGui::EndTooltip();
    }
}

float calcTextSize(const char *text, float font_size) {
    ImGuiContext &g = *GImGui;
    
    ImFont *font = g.Font;
    
    ImVec2 text_size;
    if (font_size == 0) {
        text_size = font->CalcTextSizeA(font->FontSize, FLT_MAX, -1.0f, text, NULL, NULL);
    } else {
        text_size = font->CalcTextSizeA(font_size, FLT_MAX, -1.0f, text, NULL, NULL);
    }
    
    text_size.x = IM_FLOOR(text_size.x + 0.99999f);
    
    return text_size.x;
}

void setDarkTheme() {
    ImGuiStyle *style = &ImGui::GetStyle();
    
    style->WindowRounding = 12.0f;// góc tròn cửa sổ
    style->WindowBorderSize = 1.0f;//viền cửa sổ
    style->FramePadding = ImVec2(16.0f, 16.0f);//phần đệm thành phần
    style->WindowPadding = ImVec2(16.0f, 16.0f);//đệm cửa sổ
    
    style->ScrollbarSize = 50.0f;//kích thước thanh cuộn 64
    style->ScrollbarRounding = 4.0f;//滚动条大小 kích thước thanh cuộn
    style->FrameRounding = 18.0f; //12
    style->FrameBorderSize = 1.0f;
    style->ItemSpacing = ImVec2(13.0f, 13.0f); //16
    style->ItemInnerSpacing = ImVec2(16.0f, 16.0f);
    style->GrabMinSize = 72.0f; //72
    style->GrabRounding = 9.0f; //12
    
    ImVec4 *colors = style->Colors;
    
    colors[ImGuiCol_Text] = ImColor(255, 255, 255).Value;
    colors[ImGuiCol_TextDisabled] = ImColor(0, 0, 0, 200).Value;
    
    colors[ImGuiCol_WindowBg] = ImColor(0, 0, 0, 200).Value;
    colors[ImGuiCol_ChildBg] = ImColor(0, 0, 0, 100).Value; //mau giua
    colors[ImGuiCol_PopupBg] = ImColor(0, 0, 0,150).Value; //Cửa sổ bật lên
    colors[ImGuiCol_Border] = ImColor(0, 0, 0, 255).Value; //Ranh giới
    colors[ImGuiCol_BorderShadow] = ImColor(0, 0, 0, 0).Value; //Bóng viền
    
    colors[ImGuiCol_FrameBg] = ImColor(0, 0, 0, 235).Value; //Khung
    colors[ImGuiCol_FrameBgHovered] = ImColor(0, 0, 0, 235).Value; //Khung di chuột
    colors[ImGuiCol_FrameBgActive] = ImColor(0, 0, 0, 50).Value; //Khung hoạt động
    
    colors[ImGuiCol_TitleBg] = ImColor(94, 189, 255, 250).Value; //  Tiêu đề
    colors[ImGuiCol_TitleBgActive] = ImColor(94, 189, 255, 250).Value; //tiêu đề Đang hoạt động
    colors[ImGuiCol_TitleBgCollapsed] = ImColor(94, 189, 255, 200).Value; //Tiêu đề đã được thu gọn
    colors[ImGuiCol_MenuBarBg] = ImColor(94, 189, 255).Value; //Thanh menu
    
    colors[ImGuiCol_ScrollbarBg] = ImColor(0, 0, 0, 255).Value; //Thanh cuộn
    colors[ImGuiCol_ScrollbarGrab] = ImColor(94, 189, 255, 150).Value; //Thanh cuộn chỉ xuống
    colors[ImGuiCol_ScrollbarGrabHovered] = ImColor(94, 189, 255, 150).Value;   //Thanh cuộn di chuột
    colors[ImGuiCol_ScrollbarGrabActive] = ImColor(94, 189, 255, 255).Value; //Thanh cuộn kích hoạt
    
    colors[ImGuiCol_CheckMark] = ImColor(88, 219, 65).Value; //Đánh dấu
    colors[ImGuiCol_SliderGrab] = ImColor(94, 189, 255, 150).Value; //Thanh trượt
    colors[ImGuiCol_SliderGrabActive] = ImColor(94, 189, 255, 255).Value; //Thanh trượt đang hoạt động
    
    colors[ImGuiCol_Button] = ImColor(94, 189, 255, 150).Value; //Cái nút
    colors[ImGuiCol_ButtonHovered] = ImColor(94, 189, 255, 250).Value; //Nút được di chuột
    colors[ImGuiCol_ButtonActive] = ImColor(94, 189, 255, 150).Value; //Nút hoạt động
    
    colors[ImGuiCol_Header] = ImColor(94, 189, 255).Value; //tiêu đề
    colors[ImGuiCol_HeaderHovered] = ImColor(94, 189, 255).Value; //Tiêu đề di chuột
    colors[ImGuiCol_HeaderActive] = ImColor(94, 189, 255).Value; //Tiêu đề đang hoạt động
    
    colors[ImGuiCol_Separator] = ImColor(94, 189, 255).Value; //Dấu phân cách
    colors[ImGuiCol_SeparatorHovered] = ImColor(224, 0, 255, 255).Value; //Dấu phân cách được di chuột
    colors[ImGuiCol_SeparatorActive] = ImColor(224, 0, 255, 255).Value; //Dấu phân cách hoạt động
    
    colors[ImGuiCol_ResizeGrip] = ImColor(94, 189, 255, 150).Value; //Thay đổi kích thước
    colors[ImGuiCol_ResizeGripHovered] = ImColor(94, 189, 255, 250).Value; //Di chuột
    colors[ImGuiCol_ResizeGripActive] = ImColor(94, 189, 255, 150).Value; // hoạt động
    
    colors[ImGuiCol_Tab] = ImColor(94, 189, 255, 250).Value; //Chuyển hướng
    colors[ImGuiCol_TabHovered] = ImColor(94, 189, 255, 250).Value; //Chuyển hướng di chuột
    colors[ImGuiCol_TabActive] = ImColor(0, 0, 0, 255).Value; //Chuyển hướng hoạt đông
    colors[ImGuiCol_TabUnfocused] = ImColor(224, 0, 255, 255).Value; //Tab không được tập trung
    colors[ImGuiCol_TabUnfocusedActive] = ImColor(224, 0, 255, 255).Value; //tab Không tập trung Đang hoạt động
    
    
    colors[ImGuiCol_PlotLines] = ImColor(214, 48, 25, 255).Value; //Kịch bản
    colors[ImGuiCol_PlotLinesHovered] = ImColor(214, 48, 25, 150).Value; //Lô đất được di chuột
    colors[ImGuiCol_PlotHistogram] = ImColor(214, 48, 25, 255).Value;
    colors[ImGuiCol_PlotHistogramHovered] = ImColor(214, 48, 25, 150).Value;
    
    colors[ImGuiCol_TableHeaderBg] = ImColor(94, 189, 255).Value; //Tiêu đề bảng
    colors[ImGuiCol_TableBorderStrong] = ImColor(94, 189, 255).Value; //Bảng viền
    colors[ImGuiCol_TableBorderLight] = ImColor(0, 0, 0, 255).Value; //Đèn viền bàn
    colors[ImGuiCol_TableRowBg] = ImColor(94, 189, 255).Value;
    colors[ImGuiCol_TableRowBgAlt] = ImColor(94, 189, 255).Value;
    
    colors[ImGuiCol_TextSelectedBg] = ImColor(224, 0, 255, 255).Value;
    colors[ImGuiCol_DragDropTarget] = ImColor(224, 0, 255, 255).Value;
    
    colors[ImGuiCol_NavHighlight] = ImColor(224, 0, 255, 255).Value;
    colors[ImGuiCol_NavWindowingHighlight] = ImColor(224, 0, 255, 255).Value;
    colors[ImGuiCol_NavWindowingDimBg] = ImColor(224, 0, 255, 255).Value;
    colors[ImGuiCol_ModalWindowDimBg] = ImColor(224, 0, 255, 255).Value;
}
