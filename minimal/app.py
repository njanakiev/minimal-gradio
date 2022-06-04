import gradio as gr


def greet(name):
    return f"Hello, {name}!"

if __name__ == '__main__':
    iface = gr.Interface(
        fn=greet,
        inputs="text",
        outputs="text",
        description="Minimal Gradio Example Application",
        flagging_dir='flagged')
    iface.launch(
        server_name='0.0.0.0',
        server_port=7861)
