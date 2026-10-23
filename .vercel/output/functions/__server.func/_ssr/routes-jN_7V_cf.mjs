import { i as __toESM } from "../_runtime.mjs";
import { K as require_react, b as require_jsx_runtime } from "../_libs/@tanstack/react-router+[...].mjs";
import { n as previewPathPrefix } from "./router-DcfaHDH7.mjs";
//#region node_modules/.nitro/vite/services/ssr/assets/routes-jN_7V_cf.js
var import_react = /* @__PURE__ */ __toESM(require_react());
var import_jsx_runtime = require_jsx_runtime();
function Home() {
	const [src, setSrc] = (0, import_react.useState)("/scene.html");
	(0, import_react.useEffect)(() => {
		const next = `${previewPathPrefix(window.location.hostname, window.location.pathname) ?? ""}/scene.html`;
		if (next !== src) setSrc(next);
	}, [src]);
	return /* @__PURE__ */ (0, import_jsx_runtime.jsx)("iframe", {
		className: "scene-frame",
		src,
		title: "Живописная деревня"
	});
}
//#endregion
export { Home as component };
