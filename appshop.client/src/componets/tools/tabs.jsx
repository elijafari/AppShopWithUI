import { useState } from "react";

export default function Tabs() {
  const [activeTab, setActiveTab] = useState("home");

  return (
    <div>
      <div>
        <button onClick={() => setActiveTab("home")}>
          خانه
        </button>

        <button onClick={() => setActiveTab("profile")}>
          پروفایل
        </button>

        <button onClick={() => setActiveTab("settings")}>
          تنظیمات
        </button>
      </div>

      <div>
        {activeTab === "home" && <h2>محتوای خانه</h2>}
        {activeTab === "profile" && <h2>محتوای پروفایل</h2>}
        {activeTab === "settings" && <h2>محتوای تنظیمات</h2>}
      </div>
    </div>
  );
}