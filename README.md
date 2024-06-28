### Implementation of a Traffic Controller for a 3-Way Intersection

This implementation of a traffic controller for a 3-way intersection uses a finite state machine (FSM) with main states and sub-states to manage the traffic lights. The lights are controlled for three directions: West to East, West to North, East to West, East to North, North to East, and North to West. The traffic light transitions are based on a clock signal.

#### Main States (Phases)
1. **PHASE1**: Manages the traffic lights for West to East, East to West, and East to North.
2. **PHASE2**: Manages the traffic lights for West to East, West to North, and North to West.
3. **PHASE3**: Manages the traffic lights for North to East, North to West, and East to North.

Each main state has four sub-states representing the different traffic light colors:
- **Red-Yellow (RY)**: Transition state before green.
- **Green (G)**: Go signal.
- **Yellow (Y)**: Transition state before red.
- **Red (R)**: Stop signal.

### State Transitions

#### Main State Transitions
The main states (PHASE1, PHASE2, PHASE3) transition cyclically, ensuring that each direction gets its turn to move. The transition from one main state to another occurs after the sub-state completes its cycle.

#### Sub-State Transitions
Each main state contains sub-states that transition based on a counter value:
1. **Red-Yellow (RY)**: Signals the transition from red to green.
2. **Green (G)**: Signals the go state.
3. **Yellow (Y)**: Signals the transition from green to red.
4. **Red (R)**: Signals the stop state.

The sub-states cycle through RY -> G -> Y -> R.

![Doc1-1](https://github.com/LasiduDilshan/T-Junction-Traffic-Light-System/assets/126545632/3e3a3520-e310-4d96-ae05-2207393d231d)

![Doc1-2](https://github.com/LasiduDilshan/T-Junction-Traffic-Light-System/assets/126545632/6960cb3d-b73f-4143-a974-da25132f3bff)

![Doc1-3](https://github.com/LasiduDilshan/T-Junction-Traffic-Light-System/assets/126545632/ee2df573-e531-409c-b889-4355bd408d4b)

![Doc1-5](https://github.com/LasiduDilshan/T-Junction-Traffic-Light-System/assets/126545632/4fa39382-0885-4903-8a74-c2f254ebff45)

### Finite State Machine

![Doc1-4](https://github.com/LasiduDilshan/T-Junction-Traffic-Light-System/assets/126545632/85b2ba7f-ee3e-4eb0-b4be-841c4be67aca)

<table>
    <tr>
        <td>Current State</td>
        <td>Next State</td>
        <td>Output</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td></td>
        <td>H1</td>
        <td>H2</td>
        <td>H3</td>
        <td>H4</td>
        <td>H5</td>
        <td>H6</td>
    </tr>
    <tr>
        <td>G1</td>
        <td>Y1</td>
        <td>RED</td>
        <td>GREEN</td>
        <td>RED</td>
        <td>GREEN</td>
        <td>RED</td>
        <td>GREEN</td>
    </tr>
    <tr>
        <td>Y1</td>
        <td>R1</td>
        <td>RED</td>
        <td>YELLOW</td>
        <td>RED</td>
        <td>YELLOW</td>
        <td>RED</td>
        <td>YELLOW</td>
    </tr>
    <tr>
        <td>R1</td>
        <td>RY2</td>
        <td>RED</td>
        <td>RED</td>
        <td>RED</td>
        <td>RED</td>
        <td>RED</td>
        <td>RED</td>
    </tr>
    <tr>
        <td>RY2</td>
        <td>G2</td>
        <td>RY</td>
        <td>RED</td>
        <td>RY</td>
        <td>RED</td>
        <td>RED</td>
        <td>RY</td>
    </tr>
    <tr>
        <td>G2</td>
        <td>Y2</td>
        <td>GREEN</td>
        <td>RED</td>
        <td>GREEN</td>
        <td>RED</td>
        <td>RED</td>
        <td>GREEN</td>
    </tr>
    <tr>
        <td>Y2</td>
        <td>R2</td>
        <td>YELLOW</td>
        <td>RED</td>
        <td>YELLOW</td>
        <td>RED</td>
        <td>RED</td>
        <td>YELLOW</td>
    </tr>
    <tr>
        <td>R2</td>
        <td>RY3</td>
        <td>RED</td>
        <td>RED</td>
        <td>RED</td>
        <td>RED</td>
        <td>RED</td>
        <td>RED</td>
    </tr>
    <tr>
        <td>RY3</td>
        <td>G3</td>
        <td>RY</td>
        <td>RED</td>
        <td>RED</td>
        <td>RY</td>
        <td>RY</td>
        <td>RED</td>
    </tr>
    <tr>
        <td>G3</td>
        <td>Y3</td>
        <td>GREEN</td>
        <td>RED</td>
        <td>RED</td>
        <td>GREEN</td>
        <td>GREEN</td>
        <td>RED</td>
    </tr>
    <tr>
        <td>Y3</td>
        <td>R3</td>
        <td>YELLOW</td>
        <td>RED</td>
        <td>RED</td>
        <td>YELLOW</td>
        <td>YELLOW</td>
        <td>RED</td>
    </tr>
    <tr>
        <td>R3</td>
        <td>RY1</td>
        <td>RED</td>
        <td>RED</td>
        <td>RED</td>
        <td>RED</td>
        <td>RED</td>
        <td>RED</td>
    </tr>
    <tr>
        <td>RY1</td>
        <td>G1</td>
        <td>RED</td>
        <td>RY</td>
        <td>RED</td>
        <td>RY</td>
        <td>RED</td>
        <td>RY</td>
    </tr>
</table>

### Teastbench 

![wave](https://github.com/LasiduDilshan/T-Junction-Traffic-Light-System/assets/126545632/f6c36922-d1cd-4b02-a6f8-f5b1f48aa4c5)

### Counter
A counter is used to determine the duration of each sub-state. When the counter reaches a specified threshold, the sub-state transitions to the next sub-state. The count value is reset for each transition.

### Process Explanation
1. **Reset Condition**:
   - When the reset signal (`rst`) is high, the system initializes to PHASE1 and sub-state RY with the counter set to zero.

2. **Normal Operation**:
   - During normal operation, the counter increments with each clock cycle.
   - When the counter reaches the specified threshold, it resets to zero and transitions to the next sub-state.
   - If the current sub-state is Red (R), it transitions to Red-Yellow (RY) and moves to the next main state (PHASE1 -> PHASE2 -> PHASE3 -> PHASE1).
   - If the main state is PHASE3 and the sub-state is Red (R), it loops back to PHASE1.

### Transition Timing
The timing for each transition is based on the counter value and the clock frequency. The counter incrementing on each clock cycle defines the duration of each sub-state.

### Output Logic
The output logic sets the traffic light colors based on the current main state and sub-state:
- **PHASE1**:
  - **Red-Yellow**: Sets West to East, East to West, and East to North to Red-Yellow.
  - **Green**: Sets West to East, East to West, and East to North to Green.
  - **Yellow**: Sets West to East, East to West, and East to North to Yellow.
  - **Red**: Sets West to East, East to West, and East to North to Red.
  
- **PHASE2**:
  - **Red-Yellow**: Sets West to East, West to North, and North to West to Red-Yellow.
  - **Green**: Sets West to East, West to North, and North to West to Green.
  - **Yellow**: Sets West to East, West to North, and North to West to Yellow.
  - **Red**: Sets West to East, West to North, and North to West to Red.
  
- **PHASE3**:
  - **Red-Yellow**: Sets North to East, North to West, and East to North to Red-Yellow.
  - **Green**: Sets North to East, North to West, and East to North to Green.
  - **Yellow**: Sets North to East, North to West, and East to North to Yellow.
  - **Red**: Sets North to East, North to West, and East to North to Red.

### Example Timing
Assuming a clock frequency of 100 MHz and a count threshold of 25,000,000:
- Each sub-state transition occurs every 0.25 seconds (25,000,000 / 100,000,000).
- The total time for each full cycle of sub-states (RY -> G -> Y -> R) is 1 second.

### Simple Demo

![WhatsApp Image 2024-06-28 at 16 18 05_67c3fb4b](https://github.com/LasiduDilshan/T-Junction-Traffic-Light-System/assets/126545632/d3e186f0-9fde-4247-b489-b467cd130707)

### Summary
This traffic controller implementation for a 3-way intersection uses a finite state machine with main and sub-state transitions to manage the traffic lights. The state transitions are driven by a counter that ensures each state and sub-state lasts for a specified duration, providing predictable and consistent traffic control. The output logic sets the traffic lights based on the current state and sub-state, ensuring safe and efficient traffic flow. The provided testbench helps verify the functionality by simulating the behavior and observing the changes in traffic lights over time.

This implementation of a traffic light system for a T junction is created solely for educational purposes, and it may not be the most practical or comprehensive approach for a real-world scenario. Keep in mind that real traffic control systems involve a wide range of considerations including vehicle detection, pedestrian crossing, emergency vehicle prioritization, and more. This simple model is designed to help understand the basics of state machines and digital logic design rather than provide a real-world solution.
