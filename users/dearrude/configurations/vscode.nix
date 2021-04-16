{ config, pkgs, ... }:

{
  programs.vscode = {
    enable = true;
   # package = pkgs.vscodium;
    extensions = with pkgs.unstable.vscode-extensions; [
      ms-vscode-remote.remote-ssh
    ];
    keybindings = [
      {
         "key"= "ctrl+Tab";
         "command"= "workbench.action.terminal.focus";
      }
      {
          "key"= "ctrl+Tab";
          "command"= "workbench.action.focusActiveEditorGroup";
          "when"= "terminalFocus";
      }
      {
        "key"= "alt+escape";
        "command"= "workbench.action.closePanel";
      }
      {
          "key"= "ctrl+alt+c";
          "command"= "workbench.output.action.clearOutput";
      }
    ];
    userSettings = {
	    "window.zoomLevel"= 0;
	    "workbench.activityBar.visible"= false;
	    "editor.minimap.enabled"= false;
	    "python.pythonPath"= "/usr/bin/python3";
	    "code-runner.runInTerminal"= true;
	    "C_Cpp.updateChannel"= "Insiders";
	    "[xml]"= {
              "editor.defaultFormatter"= "DotJoshJohnson.xml";
            };
	    "git.enableSmartCommit"= true;
	    "git.autofetch"= true;
	    "git.confirmSync"= false;
	    "explorer.confirmDelete"= false;
	    "rust.clippy_preference"= "on";
	    "liveshare.allowGuestTaskControl"= true;
	    "liveshare.anonymousGuestApproval"= "accept";
	    "liveshare.allowGuestDebugControl"= true;
	    "liveshare.accountProvider"= "";
	    "workbench.iconTheme"= "material-icon-theme";
	    "editor.fontSize"= 13;
	    "editor.fontWeight"= "200";
	    "editor.formatOnType"= true;
	    "files.autoGuessEncoding"= true;
	    "workbench.preferredDarkColorTheme"= "Visual Studio Dark";
	    "debug.console.fontSize"= 13;
	    "markdown.preview.fontSize"= 13;
	    "terminal.integrated.fontSize"= 11.5;
	    "terminal.integrated.lineHeight"= 1.2;
	    "prettier.resolveGlobalModules"= true;
	    "highlight.regexes"= {

	    };
	    "window.menuBarVisibility"= "toggle";
	    "vsicons.dontShowNewVersionMessage"= true;
	    "latex-workshop.message.update.show"= false;
	    "latex-workshop.view.pdf.viewer"= "tab";
	    "cSpell.userWords"= [
		    "Sosha"
		    "pytest"
	    ];
	    "explorer.confirmDragAndDrop"= false;
	    "editor.accessibilitySupport"= "off";
	    "workbench.editor.tabSizing"= "shrink";
	    "prettier.tabWidth"= 4;
	    "latex-workshop.bibtex-format.tab"= "4 spaces";
	    "editor.fontFamily"= "Fira Code SemiBold, Menlo, feather, 'Courier New', monospace";
	    "editor.fontLigatures"= true;
	    "editor.codeActionsOnSave"= null;
	    "workbench.colorTheme"= "Andromeda Colorizer";
	    "editor.formatOnPaste"= true;
	    "files.associations"= {
		    ".pylintrc"= "toml";
	    };
	    "telemetry.enableCrashReporter"= false;
	    "telemetry.enableTelemetry"= false;
	    "code-runner.enableAppInsights"= false;
	    "terminal.integrated.commandsToSkipShell"= [
		    "language-julia.interrupt"
	    ];
	    "julia.enableTelemetry"= true;
	    "julia.lint.run"= true;
	    "workbench.editorAssociations"= [];
	    "[yaml]"= {
		    "editor.defaultFormatter"= "redhat.vscode-yaml";
	    };
    };
  };
}
