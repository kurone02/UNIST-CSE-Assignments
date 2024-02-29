# InfoVis Review

## Data Models

Think of how to make visualization

Given a dataset, visualize the data, explain the visualization (e.g, why you choose this)

## Data

### Variable type
* Nominal data (comparision == and !=)
* Ordinal data (can be ordered < and >)
* Interval data (can do arithmetic)
* Ratio data (same as above but have 0 point)

### Multidimension

### Channels
* Size
* Shape
* Color
    * What color to use is important
    * Play an important role in understanding the visualization
    * In what case the color scale is good

## Cleveland's Hierarchy
This is for **magnitude** and **ratio comparisons**
1. Position
1. Length
1. Angle/SLope
1. Area
1. Volume
1. Color
1. Texture

## Perception

- Somewhat same as color
- What granularity you're gonna present

### Just Noticeable Difference
- Threshold that human can distinguish the difference
- Reported when a person notices the difference 50% of the time

### Pre-attentive Processing
- Task that can be performed in 200-250ms are considered pre-attentive.

## Color
- Choosing color is very important
- No best scale, depending on the tasks and data

### Qualitative scheme
### Divergent
### General guildlines
- Blue color, black background -> very bad
- Blue color on large regions, not thin lines
- Red and Green in the center of the field of view
- Black, white, and yellow are in periphery(boundary)
- Adjacent color should be vary in hue
- Do not use highly saturated colors for large regions

## Univariate Data Visualization
- Histogram
- Box
- Line charts

## Multivariate Data Visualization
Two simple choices:
- Tables
    - Precise values, look up, and compare individual values
- Visualization (graph)
    - Can see trend, reveal the relationship between them

- Scatter plot -> Quickly identify ouliers, clusters, and distributions
- Kernel Desity Estimation: Probability heatmap
- Parallel coordinate plots
    - Pros:
        - Can take more than two variable
    - Cons:
        - Needs to be normalized
        - Ordering of the coordinates have major impact on the visualization
- Mosaic Plot
    - The important encoding is length of the sides

## Tag cloud
-> Words

## Visual Boosting of Pixel-based Visualization

## Interaction

### Brushing
- Select part of the data to view
- Connect multiple view through linked brushing

## Visual Variables
- The ranking of different visualization cues changes along with the data type
    - Quantitative
    - Ordinal
    - Nominal
- Position is always on the top of the rank

## Time data

### Task
- **Seeing** overview
- **Comparing** across or within time lines
- **Querying** temporal series
- **Finding** patterns
- **Finding** annomaly
- **Understading** causes and effects
- **Seeing** details of events

### Why temporal data analysis is difficult?
1. Long Time Periods
1. Many Series
    - Sampling: Take a subset at random to analyze

### Horizon Graphs
- The goal is to save space for visualization

### Stack Zooming

### Temporal Correlation

---

# The slides from Video

## Visual encoding

- Concept of marks and channels, how to define
- how she categorize visualization
- Reduntdant stuffs
- Which visualization to use (effectiveness of different types of visualizations)

### Expressiveness
channel types -> data types
### Effectiveness
some channels are better than others