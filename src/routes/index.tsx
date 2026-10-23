import { useEffect, useState } from "react";
import { createFileRoute } from "@tanstack/react-router";
import { previewPathPrefix } from "@/lib/preview-path-prefix";

export const Route = createFileRoute("/")({ component: Home });

function Home() {
  const [src, setSrc] = useState("/scene.html");

  useEffect(() => {
    const prefix = previewPathPrefix(window.location.hostname, window.location.pathname) ?? "";
    const next = `${prefix}/scene.html`;
    if (next !== src) setSrc(next);
  }, [src]);

  return <iframe className="scene-frame" src={src} title="Живописная деревня" />;
}
